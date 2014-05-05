# Using the PayPal REST API in Sinatra to make a PayPal payment

[![Build Status](https://travis-ci.org/commercefactory/001-paypal-rest-sinatra-paypal-payment.svg?branch=master)](https://travis-ci.org/commercefactory/001-paypal-rest-sinatra-paypal-payment)

This is an example of the PayPal REST API using the official Ruby SDK in Sinatra to make a PayPal payment.

This branch includes a lot of files for the purpose of testing. To see a simplified example please switch to the [simplified](https://github.com/commercefactory/001-paypal-rest-sinatra-paypal-payment/tree/simplified) branch.

## Technology

This demo uses

* Ruby 1.9.3 or higher
* The [Sinatra](http://www.sinatrarb.com/) web framework
* The [PayPal Ruby REST SDK](https://github.com/paypal/rest-api-sdk-ruby)

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

* Requirement: [Firefox](http://getfirefox.com) for [Selenium](http://seleniumhq.org)
* Run `bundle` to install all dependencies
* Run `rake` to test the app

