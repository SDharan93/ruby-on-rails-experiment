# Ruby on rails experiment

[![Build Status](https://travis-ci.com/SDharan93/ruby-on-rails-experiment.svg?branch=master)](https://travis-ci.com/SDharan93/ruby-on-rails-experiment)

This project is mostly me learning the ruby on rails framework on my daily commute.

## Setup

Run the docker-compose orcestration file to create the neccessary images and download all dependencies.

Create and run all containers:
`
docker-compose up -d --build
`

Create the databases:
`
docker-compose run web rake db:create
`


## Testing

To run Rubocop for lint checks:
`
docker-compose run web rubocop
`

To run all unit tests:
`
docker-compose run web rails test
`

## Runing the application

To run the application, it's as simple as running all containers!

`
docker-compose up -d --build
`

The application should now be visible at `http://localhost:3000/`
