require_relative '../helpers/ebay_api'
require 'json'

describe 'test advanced search api' do
  context 'when find item with free shipping', :test do
    before(:all) do
      @body = {}
      @response = RequestApi.new.find_item_with_free_shipping("id", "tolkien")
    end

    let(:response_body) { JSON(@response.body) }

    it 'check response code' do
      expect(@response.code).to eq 200
    end

    it 'check response body' do
      puts(response_body)
      expect(response_body["items"][0]["shippingType"]).to include 'Free'
    end
  end

  context 'get item by group id' do
    before(:all) do
      @body = {}
      @response = RequestApi.new.get_by_item_group("#34586")
    end
    let(:response_body) { JSON(@response.body) }

    it 'check response code' do
      expect(@response.code).to eq 200
    end
  end
end