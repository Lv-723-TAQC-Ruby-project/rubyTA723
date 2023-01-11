When('I open API connection') do
  require_relative '../support/config/ebay_api'
end

When('I search for {string}') do |brand_name|
  @response = EbayApi.new.search_for(brand_name)
end


When('I expect to see {string}') do |title|
  expect(JSON.parse(@response.body)['itemSummaries'][0]['title']).to include title
end
