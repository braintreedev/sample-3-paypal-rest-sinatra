# Using the PayPal REST API in Sinatra to make a PayPal payment

## Technology

This demo uses

* Ruby 2.0 or higher
* The Sinatra web framework
* The PayPal Ruby REST SDK

## Running the demo

* Run `bundle` to install all dependencies
* Run `rackup` to start the app
* Visit `http://127.0.0.1:9292/` in your browser
* You will be redirected to PayPal
* Login using the following credentials:
  * Username: `us-customer@commercefactory.org`
  * Password: `test1234`
* Complete the payment instructions
* You will receive a message that says __"Payment completed"__

## Running the test

* Requirement: Firefox for Selenium
* Run `bundle` to install all dependencies
* Run `rspec spec` to test the app

