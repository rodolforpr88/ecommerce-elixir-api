FROM elixir:latest

RUN apt-get update
RUN apt-get install --yes build-essential inotify-tools postgresql-client

RUN mix local.hex --force
RUN mix local.rebar --force
RUN curl -o ./phx_new.ez https://github.com/phoenixframework/archives/raw/master/phx_new.ez
RUN mix archive.install ./phx_new.ez

WORKDIR /app
EXPOSE 4000
