require_relative '../spec_helper'

describe 'A successful payment', js: true, type: :request do
  it 'responds with a success message' do
    visit '/'

    # check that we are on the right page
    expect(URI.parse(current_url).host).to be == "www.sandbox.paypal.com"
    expect(page).to have_content("Choose a way to pay")

    # fill in the form
    find_button("Pay with my PayPal account").click
    fill_in "Email", with: "us-customer@commercefactory.org"
    fill_in "PayPal password", with: "test1234"
    find_button("Log In").click

    # confirm details
    expect(page).to have_content("Review your information")
    first("#continue_abovefold").click

    # check final page details
    expect(URI.parse(current_url).host).to be == "127.0.0.1"
    expect(page).to have_content("Payment completed")
  end
end