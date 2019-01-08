# README

### How to run in development

From the repository folder run: 

`docker-compose up --build`

This starts your Rails server **listening at port 3002** in a Docker container. 

### Example usage

#### Api endpoints 

Get transactions for an account

GET `/transactions/account?account_number=3506988532`

Create new transaction for account

POST `/transactions?account_number=3506988532&amount=500`
