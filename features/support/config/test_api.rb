require_relative 'ebay_api'


response = EbayApi.new.search_for('lg')

puts JSON.parse(response.body)['itemSummaries'][0]['title']
