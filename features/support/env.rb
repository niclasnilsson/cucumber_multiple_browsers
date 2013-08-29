require 'capybara/cucumber'

Capybara.default_driver = :selenium
Capybara.run_server = false

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => ENV['SELENIUM_BROWSER'].to_sym)  #:chrome)
end

