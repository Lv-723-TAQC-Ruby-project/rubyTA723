# frozen_string_literal: true

Given('I open the eBay login page') do
  @login_page = LoginPage.new
  @login_page.load
end
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
Then("I expect to see message 'Please enter your last name'") do
  expect(page).to have_text('Please enter your last name')
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
Then("I expect to see message 'Email address is invalid. Please enter a valid email address.'") do
  expect(page).to have_text 'Email address is invalid. Please enter a valid email address.'
end
