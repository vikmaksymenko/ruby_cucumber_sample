# frozen_string_literal: true

Capybara.app_host = 'https://the-internet.herokuapp.com'
Capybara.default_driver = :chrome
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app)
end
Capybara.save_path = 'reports/screenshots'
