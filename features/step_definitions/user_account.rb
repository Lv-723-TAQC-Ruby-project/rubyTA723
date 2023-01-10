
Given("I am on the eBay login page") do
  @login_page = LoginPage.new
  @login_page.load
end

When("I enter my username and password") do
  @login_page.login(LOGIN, PASSWORD)
end

Then("I should be logged in to eBay") do
  expect(page).to have_text("Hi #{FIRST_NAME}!")
end
