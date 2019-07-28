# frozen_string_literal: true

Given('User is on login page') do
  visit '/login'
  expect(page).to have_content('Login Page')
end

When('User types {string} and {string} and pushes Login') do |username, password|
  fill_in('username', with: username)
  fill_in('password', with: password)
  click_on('Login')
end

Then(/^User should see message about successful login$/) do
  expect(page).to have_text('You logged into a secure area!')
end

And('User should be in Secure Area') do
  expect(page).to have_text('Secure Area')
  expect(page).to have_current_path('/secure')
  screenshot_and_save_page
end

Then('User should see error message {string}') do |message|
  expect(page).to have_text(message)
  screenshot_and_save_page
end
