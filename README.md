# README

# Ruby version
ruby-2.6.3

# System dependencies

# Configuration

# Database
  ### 開発
  sqlite3
  ### 本番
  PosgreSQL

# VScode 拡張
  [SQLTools](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools)

# sqlite3→PostgreSQLテーブル or データ移行
### 1.sqlite3からdumpファイルをエクスポート
  ##### sqliteに接続
  ```
  rails db
  ```
  ##### dumpファイルの出力先を指定
  ```
  .out ./dumpfile.sql
  ```
  ##### dumpファイルの作成（コマンド ＋ テーブル名）
  ```
  .dump users
  ```
  ##### sqlite終了
  ```
  .exit
  ```
### 2.dumpファイル編集（※ここにテーブル作成文とかレコード作成文が記載されている）
  ##### PostgreSQL用の文に書き換える
  |変更前|変更後|備考|
  |:--|:--|:--|
  |integer primary key|serial primary key|ID|　
  |datetime|timestamp|日付時間|

  ※順次追加予定
### 3.PostgreSQLにdumpファイルをインポート
  ##### 本番環境にテーブル or レコードを作成　
  ```
  heroku pg:psql -a　persons-dev < dumpfile.sql
  ```