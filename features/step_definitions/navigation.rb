require 'watir-webdriver/atoms'

Given(/^user is on offer page$/) do
  p "Welcome to Offers"
end

And(/^a property manager logs in$/) do
  @browser.text_field(name: "email").set ENV['USERNAME']
  @browser.text_field(name: "password").set ENV['PASSWORD']
  @browser.button(type: "submit").click
  sleep 2
end

