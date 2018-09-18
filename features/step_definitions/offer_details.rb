When(/^I click on Add offer/) do
  @browser.button(class:"ak-button").click
end

Then(/^I add a new property detail mail$/) do
  @browser.file_field(accept:"undefined").set("/Users/ankitshrivatri/Desktop/project/e2e_test/e2e_one_test/lost.eml")
  @browser.div(text:"Berlin").click
  sleep 2
  @browser.span(text:"save").click
end

Then(/^I go back to Offer Dashboard$/) do
  expect(@browser.url).to match("https://offer-application-frontend-qa.dev.k8.akelius.com/offers")
end