require 'watir-webdriver/atoms'
require 'page-object'

Given(/^user is on offer page$/) do
  p "Welcome to offer"

end

And(/^a property manager logs in$/) do
  @browser.text_field(name: "email").set ENV['USERNAME']
  @browser.text_field(name: "password").set ENV['PASSWORD']
  @browser.button(type: "submit").click
end

