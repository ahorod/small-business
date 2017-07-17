# Queen's Lane

#### Ruby on Rails Independent Project, 07/07/2017

#### By Anna Horodetska

## Description

Small business web app that allows user authentication.Admin can add, edit, delete products and delete reviews.

**To access admin functionality create user with admin@admin email.**

Users can add reviews.

### Core Functionality
*_Authentication_*
- [x] The company has decided their site requires two types of accounts: basic user accounts, and administrator accounts.
- [x] Basic users must be able to leave reviews on products/services (more info below).
- [x] Only administrators will have the option to add, edit, or delete products/services, and delete user reviews.
*_Landing Page_*
- [x] The site needs a visually-appealing landing page with a welcome message, and basic information about the company.
- [x] It should include navigation options for users to make their way around the site (including the login page) too.
*_Products Page_*
- [x] It also needs an area where users may view all products or services they offer.
- [x] Admins must have an option to add new products/services.
- [x] At the very least, each product/service should include a name, description, and price. But you're encouraged to add more properties specific to the product/service your site offers.
*_Product Detail Page_*
- [x] All users should be able to click an individual product's entry to view that particular product or service's detail page.
- [x] The detail page should include all product/service details, including its image.
- [x] Authenticated basic users should have an option to leave a comment or review about a product.
- [x] Administrators should have the option to edit or delete any service or product.
- [x] Administrators should also have the option to delete inappropriate user reviews or comments.

## Setup

* Ruby Rails
* PostgreSQL
* Clone https://github.com/ahorod/small-business
* Go to small-business derictory
* Run bundle install
* Open new tab in the terminal run:
* `postgres`
* Run `rails db:create` , `rails db:migrate db:test:prepare`, `rails db:seed`
* To launch the application run `rails s`
* Open app at [http://localhost:3000](http://localhost:3000).

## Technologies Used

_HTML_

_SCSS_

_Bootstrap_

_Ruby_

_Ruby on Rails_

_Postgres SQL_

### License

Copyright (c) 2017 Anna Horodetska
The website is licensed under the MIT license.
