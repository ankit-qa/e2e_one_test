When(/^I click on Add offer$/) do|page|
  on OfferListPage
  page.adding_offer
end

Then(/^I add a new property detail mail$/) do|page|
  @browser.file_field(accept:"undefined").set("/Users/ankitshrivatri/Desktop/project/e2e_test/e2e_one_test/lost.eml")
  page.region_button.click
  sleep 2
  page.save_button.click
end

Then(/^I go back to Offer Dashboard$/) do
  expect(@browser.url).to match("https://offer-application-frontend-qa.dev.k8.akelius.com/offers")
end

And(/^I add details to offer page$/) do|page|
  @browser.file_field(accept:"undefined").set("/Users/ankitshrivatri/Desktop/project/e2e_test/e2e_one_test/lost.eml")
  sleep 2
  on OfferDetailPage
  page.region_button.click
  page.save_and_edit_button.click
  sleep 2
end

And(/^I add additional details in detail page$/) do|page|
  on OfferDetailPage
  name1=FFaker::Name.name
  p name1
  page.portfolio_name.set name1

end