# Recruitment job API

This Recruitment job API is a simple web API where you make CRUD calls to a server to get jobs from different companies.


## Front-end Project Interface

You can use these API with it's frontend app [see the repo](https://github.com/wanjaeliud/employee_hrm_client)

## Technologies Used in API

- Ruby
- ActiveRecord
- SQLite3
- Rack

## How To Use

Install it and run:

```sh
bundle install

# create migrations with activerecord
rake db:migrate

# if you would like to use seed data
rake db:seed

# start server
shotgun
```

Shotgun uses port 9292 by default.

## Relationships within Database

### Company

- has many jobs

### Job

- belongs to a company


## Example Calls You Can Make With API

### Projects

You can make all CRUD calls for the company database.

- CREATE companies
- GET/RETRIEVE all companies
- GET/RETRIEVE individual company
- DELETE a company
- UPDATE a company

#### Example: Retrieve All companies

Shows you companies and all of the jobs

```js

fetch('http://localhost:9292/companies')
      .then((res) => res.json())
      .then((data) => data.companies)

```

