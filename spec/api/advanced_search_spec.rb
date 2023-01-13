require_relative '../helpers/ebay_api'
require 'json'

describe 'test api' do
  context 'get item by legacy id' do
    before(:all) do
      @body = {}
      @response = RequestApi.new.get_by_legacy_id(110552832245)
    end
    let(:response_body) { JSON(@response.body) }

    it 'check response code' do
      expect(@response.code).to eq 200
    end
    it 'try' do
      puts(response_body)
    end
  end
end
