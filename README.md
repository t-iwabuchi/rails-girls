# Rails Sandbox using Docker

[Rails Girls - Japanese](http://railsgirls.jp/ "Rails Girls - Japanese")を、Docker環境で学習しました。

## 開発環境

* Ruby 2.4.1
* Ruby on Rails 5.1.2
* MariaDB

### リポジトリの取得

```sh
git clone git@github.com:t-iwabuchi/rails-girls.git
cd rails-girls

docker-compose build
docker-compose up -d

docker-compose run --rm app rails db:create db:migrate
```

### エイリアス

docker-composeを一々打つのが面倒な人は，`source alias.sh`することで`rails`, `rake`コマンドが短縮できます．

```sh
source alias.sh
rails console
```
