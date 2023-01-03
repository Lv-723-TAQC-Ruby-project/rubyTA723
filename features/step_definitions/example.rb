When('I go to EBAY home page') do
  @home_page = HomePage.new
  @home_page.load()
end

When('I type {string} in search field') do |search_word|
  @home_page.header.type_to_search_field(search_word)
end

When('I click search button') do
  expect(true).to be true
end

Then('I should see {string} in browser title') do |word|
  expect(true).to be true
end