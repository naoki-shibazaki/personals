# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# Ruby version

# System dependencies

# Configuration

# Database creation

# Database initialization

# How to run the test suite

# Services (job queues, cache servers, search engines, etc.)

# Deployment instructions

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
  ``` integer primary key ```　→　``` serial primary key ```　

  ``` datetime ```　→　``` timestamp```
  ※順次追加予定
### 3.PostgreSQLにdumpファイルをインポート
  ##### 本番環境にテーブル or レコードを作成　
  ```
  heroku pg:psql -a　persons-dev < dumpfile.sql
  ```