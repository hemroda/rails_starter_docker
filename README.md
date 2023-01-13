# AppName

After cloning the project, you can run it using Docker or without Docker.

## Running project using Docker

Install Docker:
* Download the app [here](https://www.docker.com/get-started/)

Make sure the Docker daemon is running, then:

Build the app:

```
❯ docker-compose build
```

Run the app:

```
❯ docker-compose up
```

Migrations are run during the build, so you only need to seed the DB:

```
❯ docker-compose run web bin/rails db:seed
```

## Running project without Docker


### Setting up your work environment

The app currently runs on `ruby 3.2.0` & `nodejs 18.12.1`.
Install Ruby using [rbenv](https://github.com/rbenv/rbenv), or [asdf](https://asdf-vm.com/), or [rvm](https://rvm.io/).  
Install NodeJS using [nvm](https://github.com/nvm-sh/nvm), or [asdf-nodejs](https://github.com/asdf-vm/asdf-nodejs)  
❗❗❗ Make sure that your local versions are correct:

For Ruby
```
❯ rbenv install 3.2.0
```
For NodeJS
```
❯ nvm install 18.12.1
```
Postgresql as our database server:
```
❯ brew install postgresql
```
Install Redis, need it for Sidekiq:
```
❯ brew install redis
```
Install the right bundler:
```
❯ gem install bundler -v 2.4.1
```
```
❯ gem install foreman
```
```
❯ npm install --global yarn
```


### To install the application dependencies:

* Ruby:
```
❯  bundle install
```
* Javascript:
```
❯  yarn install
```


### Rails Database

Create the database, run:  
```
❯ bundle exec rails db:create
```

Run migration:  
```
❯ bundle exec rails db:schema:load
```

Generate data:  
```
❯ bundle exec rails db:seed
```


### Running the app

Start your server:  
```
❯ bin/dev
```
that command will launch all the processes listed in `Procfile.dev`

Enjoy the headaches 😁


### Test accounts:

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
```
❯ yarn build:css --watch
```