# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

## ローカルでPosgreSQLを使う場合
### ローカルでPosgreSQLを使う
①以下のページの２、３を行う
https://qiita.com/krtsato/items/4565051608a63f11b316  
※「3-3. ユーザ作成」のユーザ名は「rails_user」に設定  
※「3-4. DB作成」のDB名は「personals_dev」に設定

②コンソールで以下のコマンドを行う  
rails db:migrate:reset
