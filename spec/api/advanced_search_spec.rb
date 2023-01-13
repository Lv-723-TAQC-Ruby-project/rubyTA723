# frozen_string_literal: true

require_relative '../helpers/ebay_api'
require 'json'

describe 'test advanced search api' do
  context 'when find item with free shipping', :test do
    before(:all) do
      @body = {}
      @response = RequestApi.new.free_shipping
    end

    let(:response_body) { JSON(@response.body) }

    it 'check response code' do
      expect(@response.code).to eq 200
    end

    it 'check response body' do
      expect(response_body['items'][0]['shippingType']).to include 'Free'
    end
  end

  context 'get item by legacy id' do
    before(:all) do
      @body = {}
      @response = RequestApi.new.get_by_legacy_id(110_552_832_245)
    end
    let(:response_body) { JSON(@response.body) }

    it 'check response code' do
      expect(@response.code).to eq 200
    end
  end
end
