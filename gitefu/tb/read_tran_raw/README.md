
# pick_values_from_raw.py
## 使い方
`python`で実行(場合によっては`python3`)
```bash
python pick_values_from_raw.py
```

`hoge.csv`に書き出す場合は，以下の通り
```bash
python pick_values_from_raw.py > hoge.csv
```

## 編集方法
`REQUIRE_TIME`らへんの値を順に出力する．

以下を変更してください．基本的にtimeは変わらなそうかな？
```py
HOME_DIR = os.environ["HOME"]
FILE_PATH = HOME_DIR + "/.xschem/simulations/VOUT_EXT.raw"  # change here
WRITE_PARAMS = ["time", "v(vin)", "v(voutp)"]  # change here
TIME_PARAM_NAME = "time"  # change here
REQUIRE_TIME = [
    10 * 10 ** (-12),
    20 * 10 ** (-12),
    30 * 10 ** (-12),
    40 * 10 ** (-12),
    50 * 10 ** (-12),
    60 * 10 ** (-12),
    70 * 10 ** (-12),
    80 * 10 ** (-12),
    90 * 10 ** (-12),
    100 * 10 ** (-12),
]  # change here
```

# read_raw.py
## 使い方
`python`で実行(場合によっては`python3`)
```bash
python read_raw.py
```

## 編集方法
`CSV_FILE_PATH`に`WRITE_PARAMS`で指定した値をすべて書き出す．

```py
HOME_DIR = os.environ["HOME"]
FILE_PATH = HOME_DIR + "/.xschem/simulations/VOUT_EXT.raw"  # change here
CSV_FILE_PATH = "analyzed_raw.csv"  # change here
WRITE_PARAMS = ["time", "v(vin)", "v(voutp)"]  # change here
TIME_PARAM_NAME = "time"  # change here
```