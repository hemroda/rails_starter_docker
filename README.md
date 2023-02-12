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

### Test accounts

There a two accounts created during the seed process:

- For admin section:
  url: [http://localhost:3000/admin](http://localhost:3000/admin)
  email: `jsmith@AppName.com`
  password: `password`


Enjoy the headaches 😁
