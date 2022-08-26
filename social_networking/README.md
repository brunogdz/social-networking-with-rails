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

* ...

# Inicializar o Projeto

1 - rails new PROJECTNAME -d postgresql (inicializar o projeto)
2 - pg_ct1 -D /usr/local/var/postgres start


### Devise

rails generate devise:install
rails generate device MODEL (nesse caso foi usado o admin)
rails generate devise:views -v registrations sessions

# 
Para criacao do database faz: rails db:create

