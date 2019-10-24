# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example in Lighthouse Labs.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Some important features

- User can place an order with testing Credit Card info.
![Place order](gif/purchase.gif)

- Items are divided into different categories.
![Different categories](gif/category.gif)

- Admin are allowed to view all items they add to the site and add more items.
![Different categories](gif/allProducts.gif)

- Once the quantity of item is down to _zero_ in the database, there is an icon to remind users.
![Different categories](gif/quantity.gif)

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe