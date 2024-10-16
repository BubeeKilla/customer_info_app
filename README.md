# Customer Info App

A Ruby on Rails application for managing customer information using PostgreSQL on AWS RDS.

## Table of Contents
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
- [License](#license)

## Technologies Used
- Ruby on Rails
- PostgreSQL
- AWS RDS
- Docker (for pgAdmin as connection tool to the RDS table, my case customer_info_app_development, check database name for development below)

## Getting Started

### Installation
1. Clone the repository:
  ```bash
  git clone https://github.com/BubeeKilla/customer_info_app.git
  cd customer_info_app
  ```
2. Install dependencies:
  ```bash
  bundle install
  ```
3. Configure your database in database.yml file:
  ```yml
  default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: <%= ENV['DB_USERNAME'] %> <<here use ur env variables, I have used mine from .env file(app root directory), or setupt them globally on your machine>>
  password: <%= ENV['DB_PASSWORD'] %> <<here use ur env variables, I have used mine from .env file(app root directory), or setupt them globally on your machine>>
  host: <%= ENV['DB_HOST'] %> <<here use ur env variables, I have used mine from .env file(app root directory), or setupt them globally on your machine>>
  port: 5432

  development:
    <<: *default
    database: customer_info_app_development

  test:
    <<: *default
    database: customer_info_app_test

  production:
    <<: *default
    database: customer_info_app_production
  ```
4. Create and migrate the database: 
  ```bash     
  rails db:create
  rails db:migrate
  ```
5. Start the Rails server:  
  ```bash
  rails server
  ```

### Usage

- Visit the homepage.
- Fill the spaces with the info like Name..etc.
- Submit
  
## License

  - This project is licensed under the MIT License - see the LICENSE file for details.
