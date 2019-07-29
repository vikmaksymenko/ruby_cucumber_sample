# frozen_string_literal: true

Capybara.app_host = 'https://the-internet.herokuapp.com'
Capybara.save_path = 'reports/screenshots'

if ENV["BROWSER"] == 'firefox'
	Capybara.default_driver = :selenium
	Capybara.register_driver :selenium do |app|
	  Capybara::Selenium::Driver.new(app, browser: :firefox)
	end
end

if ENV["BROWSER"] == 'chrome'
	Capybara.default_driver = :chrome
	Capybara.register_driver :chrome do |app|
	  Capybara::Selenium::Driver.new(app, browser: :chrome)
	end
end
