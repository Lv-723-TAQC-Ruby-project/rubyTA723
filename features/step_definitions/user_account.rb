Given("I am on the eBay login page") do
  @login_page = LoginPage.new
  @login_page.load
end

When("I enter my username and password") do
  config = JSON.parse(File.read("config.json"))
  @login_page.login(config["login"], config["password"])
end

Then("I should be logged in to eBay") do
  expect(page).to have_text("Hi Andrew")
end
