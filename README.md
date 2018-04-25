# Ruby on rails experiment

This project is mostly me learning the framework on my daily commute!

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