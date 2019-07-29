Capybara.app_host = 'https://the-internet.herokuapp.com'
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app)
end
Capybara.save_path = 'reports/screenshots'
