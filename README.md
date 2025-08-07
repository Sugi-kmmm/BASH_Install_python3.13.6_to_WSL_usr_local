# BASH:Install python3.13.6 to WSL /usr/local/
This is a bash file to install python 3.13.6 to wsl's usr/local/. It will be enabled to install pips to your wsl.

## What's this Bash?
Ubuntu24.04.1などの最近のUbuntuでは，pythonのライブラリ(numpyなど)をインストールしようとすると，下記のエラーが出るようになった．
```
error: externally-managed-environment

× This environment is externally managed
╰─> To install Python packages system-wide, try apt install
    python3-xyz, where xyz is the package you are trying to
    install.

    If you wish to install a non-Debian-packaged Python package,
    create a virtual environment using python3 -m venv path/to/venv.
    Then use path/to/venv/bin/python and path/to/venv/bin/pip. Make
    sure you have python3-full installed.

    If you wish to install a non-Debian packaged Python application,
    it may be easiest to use pipx install xyz, which will manage a
    virtual environment for you. Make sure you have pipx installed.

    See /usr/share/doc/python3.12/README.venv for more information.

note: If you believe this is a mistake, please contact your Python installation or OS distribution provider. You can override this, at the risk of breaking your Python installation or OS, by passing --break-system-packages.
hint: See PEP 668 for the detailed specification.
```
つまり，システムを破壊するかもしれないからpipインストールはやめてね，仮想環境上でインストールしてね．というものである．
ただ，毎回仮想環境を構築するのは地獄なので，避けたいであろう．

そこで，```/usr/local/```にpythonをインストールして，Debianが使用するpythonとユーザが使用するpythonを分離することにより，いつも通りpipでnumpyなどを使用可能にするbashファイルを構築した．

## インストールされるpython
本bashの実行により，**python3.13.6**が```/usr/local/```にインストールされる．

他のpythonバージョンをインストールしたい場合は，適宜bashの中をいじくってほしい．

## 新たなコマンド
以下の2つのコマンドが追加される

|コマンド|対応する元のpythonコマンド|役割|
|:--:|:--:|:--|
|```python_ul```|```python3```|Python のプログラムを実行する|
|```pip_ul```|```pip3```|Python のライブラリ（パッケージ）を PyPI（Python Package Index）からインストール・管理する|

## 使用方法
Bashファイルをダウンロードしたディレクトリで以下のコマンドを実行することで，本Bashファイルが実行できます．
```
source local_python_installer.sh
```

## 免責
本Bashを使用したことにより発生するいかなる問題に対しても，開発者は責任を負いかねます．

一応，開発者のPC環境において，正常に動作することは確認済みです．

## 開発者情報
開発者は[こちら](https://sugi-kmmm.github.io/)