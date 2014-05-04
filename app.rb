require "sinatra"
require "paypal-sdk-rest"

class Application < Sinatra::Base

  include PayPal::SDK::REST

  enable :sessions

  get "/" do
    payment = Payment.new({
      intent: "sale",
      payer: {
        payment_method: "paypal"
      },
      redirect_urls: {
        return_url: "http://127.0.0.1:9292/completed",
        cancel_url: "http://127.0.0.1:9292/cancelled"
      },
      transactions: [
        {
          amount: {
            total: "19.99",
            currency: "EUR"
          },
          description: "A llama sweater"
        }
      ]
    })

    if payment.create
      session[:payment_id] = payment.id
      redirect payment.links.find {|link| link.method == "REDIRECT" }.href
    else
      "Handle the payment creation failure"
    end
  end

  get "/cancelled" do
    "The user has cancelled the payment"
  end

  get "/completed" do
    payment = Payment.find(session[:payment_id])

    if payment.execute(payer_id: params["PayerID"])
      "Payment completed"
    else
      "Handle payment execution failure"
    end
  end
end