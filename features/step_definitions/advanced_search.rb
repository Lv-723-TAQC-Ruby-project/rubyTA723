#not completed

When('I go to EBAY home page') do
  @home_page = HomePage.new
  @home_page.load()
end

When("I click 'Advanced' search link") do

end

When("I enter item number {string} in the 'Enter keywords or item number' field") do |item_number|

end

When("I click search button") do

end

Then("I should see {string} item in the search results") do |expected_title|

end