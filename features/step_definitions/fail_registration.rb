# frozen_string_literal: true

When('I open link create an account') do
  @login_page.click_create_an_account
  @registration_page = RegistrationPage.new
end

When('I fill all fields except last name') do
  @registration_page.enter_first_name('Daisy')
  @registration_page.enter_last_name('')
  @registration_page.enter_email('daisy@gmail.com')
  @registration_page.enter_password('Example12345')
end

Then('I expect to see error message {string}') do |error_message_text|
  expect(page).to have_text(error_message_text)
end

Given('I open registration page') do
  @login_page = LoginPage.new
  @login_page.load
  @login_page.click_create_an_account
  @registration_page = RegistrationPage.new
end

When('I enter all fields I set invalid email') do
  @registration_page.enter_first_name('Daisy')
  @registration_page.enter_last_name('Smith')
  @registration_page.enter_email('daisy@gmailcom')
  @registration_page.enter_password('Example12345')
end
