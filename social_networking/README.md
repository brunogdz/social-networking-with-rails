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

3 -rails generate devise:install

4 - rails generate device MODEL (nesse caso foi usado o admin)

rails generate devise:views -v registrations sessions

# 
5 - rails db:create (Para criacao do database)

6 - rails db:migrate

7 - instalar gem 'rspec-rails'

8 - rails generate rspec:model admin

Criando um usuário admin e testando-o com rspec

```ruby
require 'rails_helper'

RSpec.describe Admin, type: :model do
  # criar uma instancia admin e testar
  it "admin is valid" do
    admin = Admin.new(email: "admin@admin.com", password: "123456")

    expect(admin.email).to eql "admin@admin.com"
  end
end

```

para executar o teste utilize:

```sh
rspec spec/models/admin_spec.rb
```

Caso ocorra um erro, deverá ser gerado o .rspec, só executar o comando

```sh
rails generate rspec:install
```

Ao executar os testes para ter mais informações, utilize o --format doc no arquivo .rspec na raiz do projeto

## Iniciar o servidor

```sh
rails s
```

Como estamos acessando como admins devemos acessar http://localhost:3000/admins/sign_in

Foi utilizado o [bootcamp-templates](https://github.com/LucianoCordeiro/bootcamp-templates) para as imagens do background e da logo