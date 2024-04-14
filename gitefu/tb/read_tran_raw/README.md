# pick_values_from_raw.py
`REQUIRE_TIME`らへんの値を2つ出力する．

以下を変更してください．基本的にtimeは変わらなそうかな？
```py
HOME_DIR = os.environ["HOME"]
FILE_PATH = HOME_DIR + "/.xschem/simulations/VOUT_EXT.raw"  # change here
WRITE_PARAMS = ["time", "v(vin)", "v(voutp)"]  # change here
TIME_PARAM_NAME = "time"  # change here
REQUIRE_TIME = 10 * 10 ** (-12)  # change here
```

# read_raw.py
`CSV_FILE_PATH`に`WRITE_PARAMS`で指定した値をすべて書き出す．

```py
HOME_DIR = os.environ["HOME"]
FILE_PATH = HOME_DIR + "/.xschem/simulations/VOUT_EXT.raw"  # change here
CSV_FILE_PATH = "analyzed_raw.csv"  # change here
WRITE_PARAMS = ["time", "v(vin)", "v(voutp)"]  # change here
TIME_PARAM_NAME = "time"  # change here
```