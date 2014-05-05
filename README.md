# Using the PayPal REST API in Sinatra to make a PayPal payment

## Technology

This demo uses

* Ruby 1.9.3 or higher
* The [Sinatra](http://www.sinatrarb.com/) web framework
* The [PayPal Ruby REST SDK](https://github.com/paypal/rest-api-sdk-ruby)

## Running the demo

* Run `bundle` to install all dependencies
* Run `ruby app.rb` to start the app
* Visit `http://127.0.0.1:9292/` in your browser
* You will be redirected to PayPal
* Login using the following credentials:
  * Username: `us-customer@commercefactory.org`
  * Password: `test1234`
* Complete the payment instructions
* You will receive a message that says __"Payment completed"__