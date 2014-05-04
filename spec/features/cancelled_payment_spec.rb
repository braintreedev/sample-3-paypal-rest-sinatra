require_relative '../spec_helper'

describe 'A cancelled payment', js: true, type: :request do
  it 'responds with a cancel message' do
    visit '/'

    # check that we are on the right page
    expect(URI.parse(current_url).host).to be == "www.sandbox.paypal.com"
    expect(page).to have_content("Choose a way to pay")

    # cancel the payment
    first("input[name=cancel_return]").click

    # check final page details
    expect(URI.parse(current_url).host).to be == "127.0.0.1"
    expect(page).to have_content("The user has cancelled the payment")
  end
end