# Rails Sandbox using Docker

Dockerを使ったRailsプロジェクトのテンプレートです．

## 開発環境

* Ruby 2.4
* Ruby on Rails 5.1.2
* MariaDB

## 開発の手順

### リポジトリの取得

```sh
git clone git@github.com:falcon8823/rails-sandbox.git
cd rails-sandbox

docker-compose build
docker-compose up

docker-compose run --rm app rails db:create db:migrate
```

### エイリアス

docker-composeを一々打つのが面倒な人は，`source alias.sh`することで`rails, rake`コマンドが短縮できます．

```sh
source alias.sh
rails console
```
