
# Java

- Javaがインストールされていること

```sh
# 特にバージョンの指定はなし
$ java --version
openjdk 23.0.2 2025-01-21
OpenJDK Runtime Environment Homebrew (build 23.0.2)
OpenJDK 64-Bit Server VM Homebrew (build 23.0.2, mixed mode, sharing)

```

# AtCoder関連ツールのインストール

## npm, pip3がインストールされていることを確認

- npm

```sh
# 特にバージョンの指定はなし
$ npm -v
11.3.0
```

- pip3

```sh
# Pythonは3.11までのバージョンを使用すること
# online-judge-toolsは内部的にdistutilsを使用しており、
# これが3.12で完全に削除されてしまっているため
$ pip3 -V
pip 24.0 from /Users/willowtown0576/.pyenv/versions/3.11.9/lib/python3.11/site-packages/pip (python 3.11)
```

## ツールのインストール

- atcoder-cli

```sh
$ npm install -g atcoder-cli
$ acc -v
2.2.0
```

- online-judge-tools

```sh
$ pip3 install online-judge-tools

# Homebrewによって管理されているPythonの場合、システム環境に直接パッケージをインストールするのは危険と判断され、インストールが失敗することがある。
# pipの代わりにpipxを使用する
$ brew install pipx
$ pipx install online-judge-tools --python <3.11以下のPythonのパス>

$ oj --version
online-judge-tools 11.5.1 (+ online-judge-api-client 10.10.1)
```

## ログイン

```sh
# 2025年現在はログインできないかも。
$ acc login
```

## 追加設定

- 問題を全てダウンロード

```
$ acc config default-task-choice all
```

- テンプレートの作成

```sh
# atcoder-cli設定ディレクトリに移動
$ cd `acc config-dir`

# テンプレート作成
$ mkdir java && cd java
$ touch template.json
$ touch Main.java
```

各ファイルの中身は以下を設定する

- template.json

```json
{
  "task":{
    "program": ["Main.java"],
    "submit": "Main.java",
	"testdir": "test"
  }
}
```

- Main.java

```java
import java.util.Scanner;

/**
 * AtCoder Java Template
 */
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
    }
}
```

上記設定をテンプレート化

```sh
$ acc config default-template java
```

## コンテストを実施するにあたって

- 問題のダウンロード

```sh
$ acc new abc380
```

以下のようにディレクトリが作成されます

```text
.
└── abc380
    ├── a
    │   ├── Main.java
    │   └── test
    │       ├── sample-1.in
    │       ├── sample-1.out
    │       ├── sample-2.in
    │       ├── sample-2.out
    │       ├── sample-3.in
    │       ├── sample-3.out
    │       ├── sample-4.in
    │       └── sample-4.out
    ├── b
    │   ├── Main.java
    │   └── test
    │       ├── sample-1.in
    │       ├── sample-1.out
    │       ├── sample-2.in
    │       ├── sample-2.out
    │       ├── sample-3.in
    │       └── sample-3.out
    ├── c
    │   ├── Main.java
    │   └── test
    │       ├── sample-1.in
    │       ├── sample-1.out
    │       ├── sample-2.in
    │       └── sample-2.out
    ├── contest.acc.json
    ├── d
    │   ├── Main.java
    │   └── test
    │       ├── sample-1.in
    │       ├── sample-1.out
    │       ├── sample-2.in
    │       ├── sample-2.out
    │       ├── sample-3.in
    │       └── sample-3.out
    ├── e
    │   ├── Main.java
    │   └── test
    │       ├── sample-1.in
    │       └── sample-1.out
    ├── f
    │   ├── Main.java
    │   └── test
    │       ├── sample-1.in
    │       ├── sample-1.out
    │       ├── sample-2.in
    │       ├── sample-2.out
    │       ├── sample-3.in
    │       └── sample-3.out
    └── g
        ├── Main.java
        └── test
            ├── sample-1.in
            ├── sample-1.out
            ├── sample-2.in
            ├── sample-2.out
            ├── sample-3.in
            └── sample-3.out
```

- 問題のテスト

```sh
$ ./test.sh abc380 a
```

- 問題の提出

```sh
# 2025年7月現在だと、リアルタイムのコンテスト以外はこのツールを使って提出できない
# Main.javaの内容をコピペして提出すること
$ ./submit.sh abc380 a
```

## 参考URL

[JavaでのAtCoder環境構築](https://qiita.com/HERUESTA/items/bed73a2906115c68ce11)
[Java】標準入力を取得するコードまとめ](https://qiita.com/probabilityhill/items/71d3169bc3654b07e6fa)