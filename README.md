# AppName

After cloning the project, you can run it using Docker or without Docker.

## Running project using Docker

Install Docker:

* Download the app [here](https://www.docker.com/get-started/)

Make sure the Docker daemon is running, then:

Build the app:

```sh
❯ docker-compose build
```

Run the app:

```sh
❯ docker-compose up
```

Migrations are run during the build, so you only need to seed the DB:

```sh
❯ docker-compose exec app bundle install
```

```sh
❯ docker-compose exec app bin/rails db:seed
```

```sh
❯ docker-compose exec app bundle exec rails assets:precompile
```

### Generating migration

```sh
❯ docker-compose exec app bundle exec rails g migration add_content_to_articles
```

### Access the console

```sh
docker-compose exec app bundle exec rails c
```

## Running project without Docker


### Setting up your work environment

The app currently runs on `ruby 3.2.0` & `nodejs 18.12.1`.
Install Ruby using [rbenv](https://github.com/rbenv/rbenv), or [asdf](https://asdf-vm.com/), or [rvm](https://rvm.io/).  
Install NodeJS using [nvm](https://github.com/nvm-sh/nvm), or [asdf-nodejs](https://github.com/asdf-vm/asdf-nodejs)  
❗❗❗ Make sure that your local versions are correct:

For Ruby

```sh
❯ rbenv install 3.2.0
```

For NodeJS

```sh
❯ nvm install 18.12.1
```

Postgresql as our database server:

```sh
❯ brew install postgresql
```

Install Redis, need it for Sidekiq:

```sh
❯ brew install redis
```

Install the right bundler:

```sh
❯ gem install bundler -v 2.4.1
```

```sh
❯ gem install foreman
```

```sh
❯ npm install --global yarn
```


### To install the application dependencies:

* Ruby:

```sh
❯  bundle install
```

* Javascript:

```sh
❯  yarn install
```


### Rails Database

Create the database, run:  

```sh
❯ bundle exec rails db:create
```

Run migration:  

```sh
❯ bundle exec rails db:schema:load
```

Generate data:  

```sh
❯ bundle exec rails db:seed
```


### Running the app

Start your server:  

```sh
❯ bin/dev
```

that command will launch all the processes listed in `Procfile.dev`

Enjoy the headaches 😁


### Test accounts

There a two accounts created during the seed process:

- For admin section:  
  url: [http://localhost:3000/admin](http://localhost:3000/admin)  
  email: `jsmith@AppName.com`  
  password: `password`


### Gotchas & Known Issues


#### Restart services

❗ Might need to launch additional commands for Redis to work:
* `❯ brew services restart postgresql`
* `❯ brew services restart redis`


#### Asset pipeline issue

❗️ If error: `The asset "application.css" is not present in the asset pipeline`, run:  

```sh
❯ yarn build:css --watch
```
