require 'cucumber'
require 'dotenv'
Dotenv.load

def browser
  (ENV['BROWSER'] ||= 'firefox').downcase.to_sym
end

def environment
  (ENV['ENVIRONMENT'] ||= 'staging').downcase.to_sym # allows me to set environment for testing as argument. defaults to 'staging'
end

Before do |scenario|
  p "Starting #{scenario}"
  @browser = Watir::Browser.new browser

  if environment == :staging
    @browser.goto "https://offer-application-frontend-qa.dev.k8.akelius.com/"

  elsif environment == :dev
    @browser.goto "https://offer-application-frontend-dev.dev.k8.akelius.com/"
  end
end

After do |scenario|
  if scenario.failed?
    Dir::mkdir('screenshots') if not File.directory?('screenshots')
    screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ', '_').gsub(/[^0-9A-Za-z_]/, '')}.png"
    @browser.driver.save_screenshot(screenshot)
    embed screenshot, 'image/png'
  end
  @browser.cookies.clear
  @browser.close
end

