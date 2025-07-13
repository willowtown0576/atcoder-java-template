# AtCoder Java 環境

AtCoderでJavaを使用するための競技プログラミング専用開発環境です。VSCode Dev Containersを使用して簡単にセットアップできます。

## 🚀 クイックスタート

### 必要なもの
- VSCode
- Dev Containers拡張機能
- Docker

### セットアップ手順

1. **プロジェクトを開く**
   ```bash
   code atcoder-java-template
   ```

2. **Dev Containerで開く**
   - `Ctrl+Shift+P` でコマンドパレットを開く
   - `Dev Containers: Reopen in Container` を選択
   - 初回は自動的にコンテナがビルドされます

3. **AtCoderにログイン**
   ```bash
   # ここは飛ばしても過去問のダウンロードは可能です
   acc login
   ```

## 📝 基本的な使い方

### 問題のダウンロード

```bash
# 例: ABC380の問題をダウンロード
acc new abc380
```

### 問題を解く

1. `abc380/a/Main.java` を開く
2. コードを書く
3. テストを実行する

### テスト実行

**方法1: VSCodeタスク（推奨）**
- `Ctrl+Shift+P` → `Tasks: Run Task` → `AtCoder: Test Current Problem`

**方法2: コマンドライン**
```bash
./test abc380 a
```

### 提出

**方法1: VSCodeタスク（推奨）**
- `Ctrl+Shift+P` → `Tasks: Run Task` → `AtCoder: Submit Current Problem`

**方法2: コマンドライン**
```bash
./submit abc380 a
```

## ⚡ VSCodeの便利機能

### タスク機能
- `Ctrl+Shift+P` → `Tasks: Run Task` で以下が利用可能：
  - **AtCoder: Download Contest** - 問題のダウンロード
  - **AtCoder: Test Current Problem** - 現在の問題をテスト
  - **AtCoder: Submit Current Problem** - 現在の問題を提出
  - **AtCoder: Login** - AtCoderにログイン

### デバッグ機能
- `F5` でデバッグ実行
- ブレークポイントで変数値を確認
- ステップ実行でロジックを追跡

### コード実行
- `Ctrl+F5` でコードを直接実行（Code Runner）

## 🛠️ 手動でのコンテナ操作

VSCode以外でコンテナを操作したい場合：

```bash
# コンテナをビルド・起動
docker-compose up -d --build

# コンテナに入る
docker-compose exec atcoder-java bash

# コンテナを停止
docker-compose down
```

## 📁 プロジェクト構造

```
atcoder-java/
├── .devcontainer/      # Dev Container設定
├── .vscode/           # VSCode設定（タスク、デバッグ等）
├── abc380/           # 問題ディレクトリ（実行時に作成）
│   ├── a/
│   │   ├── Main.java
│   │   └── test/      # サンプル入出力
│   └── ...
├── test              # テスト実行スクリプト
└── submit            # 提出スクリプト
```

## 🔧 環境詳細

### インストール済みツール
- **Java**: OpenJDK 17
- **Python**: 3.10（atcoder-cli, online-judge-tools用）
- **Node.js**: 18.x（atcoder-cli用）
- **atcoder-cli**: 問題ダウンロード・提出
- **online-judge-tools**: テスト実行

### VSCode拡張機能
- Java Extension Pack
- Java Language Support
- Code Runner

### Javaテンプレート

```java
import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);


        sc.close();
    }
}
```

## 🔍 トラブルシューティング

### Dockerビルドエラー
```bash
# キャッシュをクリアしてリビルド
docker-compose build --no-cache
```

### 権限エラー
```bash
# テスト・提出スクリプトに実行権限を付与
chmod +x test submit
```

### atcoder-cliでログインできない
- ブラウザでAtCoderにログイン後、再度 `acc login` を実行

## 📚 参考リンク

- [AtCoder](https://atcoder.jp/)
- [atcoder-cli](https://github.com/Tatamo/atcoder-cli)
- [online-judge-tools](https://github.com/online-judge-tools/oj)
- [VSCode Dev Containers](https://code.visualstudio.com/docs/remote/containers)
