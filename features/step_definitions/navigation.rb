require 'watir-webdriver/atoms'
require 'page-object'


Given(/^I navigate to offer page url$/) do
  @browser = Watir::Browser.new :firefox
  @browser.cookies.clear
  @browser.goto "https://offer-application-frontend-qa.dev.k8.akelius.com/"
end

And(/^a property manager logs in$/) do
  #expect(@browser.url).to match("https://offer-application-frontend-qa.dev.k8.akelius.com")
  @browser.text_field(name:"email").set "ankit.shrivatri@akelius.de"
  @browser.text_field(name:"password").set "V70BCkFq"
  @browser.button(type:"submit").click
  p "Success"

end

