# forked from :https://gist.github.com/snmishra/27dcc624b639c2626137

# MIT license: https://opensource.org/licenses/MIT
# See https://github.com/Isotel/mixedsim/blob/master/python/ngspice_read.py
# for a more complete library. Isotel's version is GPL licensed
from __future__ import division
import numpy as np
import matplotlib.pyplot as plot
import numpy as np
import csv
import pprint
from bisect import bisect_left
import os

HOME_DIR = os.environ["HOME"]
FILE_PATH = HOME_DIR + "/.xschem/simulations/VOUT_EXT.raw"  # change here
WRITE_PARAMS = ["time", "v(vin)", "v(voutp)"]  # change here
TIME_PARAM_NAME = "time"  # change here
REQUIRE_TIME = 10 * 10 ** (-12)  # change here

BSIZE_SP = 512  # Max size of a line of data; we don't want to read the
# whole file to find a line, in case file does not have
# expected structure.
MDATA_LIST = [
    b"title",
    b"date",
    b"plotname",
    b"flags",
    b"no. variables",
    b"no. points",
    b"dimensions",
    b"command",
    b"option",
]


def rawread(fname: str):
    """Read ngspice binary raw files. Return tuple of the data, and the
    plot metadata. The dtype of the data contains field names. This is
    not very robust yet, and only supports ngspice.
    >>> darr, mdata = rawread('test.py')
    >>> darr.dtype.names
    >>> plot(np.real(darr['frequency']), np.abs(darr['v(out)']))
    """
    # Example header of raw file
    # Title: rc band pass example circuit
    # Date: Sun Feb 21 11:29:14  2016
    # Plotname: AC Analysis
    # Flags: complex
    # No. Variables: 3
    # No. Points: 41
    # Variables:
    #         0       frequency       frequency       grid=3
    #         1       v(out)  voltage
    #         2       v(in)   voltage
    # Binary:
    fp = open(fname, "rb")
    count = 0
    arrs = []
    plots = []
    plot = {}
    while True:
        try:
            mdata = fp.readline(BSIZE_SP).split(b":", maxsplit=1)
        except:
            raise
        if len(mdata) == 2:
            if mdata[0].lower() in MDATA_LIST:
                plot[mdata[0].lower()] = mdata[1].strip()
            if mdata[0].lower() == b"variables":
                nvars = int(plot[b"no. variables"])
                npoints = int(plot[b"no. points"])
                plot["varnames"] = []
                plot["varunits"] = []
                for varn in range(nvars):
                    varspec = fp.readline(BSIZE_SP).strip().decode("ascii").split()
                    assert varn == int(varspec[0])
                    plot["varnames"].append(varspec[1])
                    plot["varunits"].append(varspec[2])
            if mdata[0].lower() == b"binary":
                rowdtype = np.dtype(
                    {
                        "names": plot["varnames"],
                        "formats": [
                            np.complex_ if b"complex" in plot[b"flags"] else np.float_
                        ]
                        * nvars,
                    }
                )
                # We should have all the metadata by now
                arrs.append(np.fromfile(fp, dtype=rowdtype, count=npoints))
                plots.append(plot)
                plot = {}  # reset the plot dict
                fp.readline()  # Read to the end of line
        else:
            break
    return (arrs, plots)


if __name__ == "__main__":
    arrs, plots = rawread(FILE_PATH)
    print(len(np.real(arrs[0][TIME_PARAM_NAME])))
    print(WRITE_PARAMS)
    i = bisect_left(arrs[0][TIME_PARAM_NAME], REQUIRE_TIME)
    write_data = []
    for p in range(len(WRITE_PARAMS)):
        write_data.append(np.real(arrs[0][WRITE_PARAMS[p]][i - 1]))
    print(write_data)
    write_data = []
    for p in range(len(WRITE_PARAMS)):
        write_data.append(np.real(arrs[0][WRITE_PARAMS[p]][i]))
    print(write_data)
