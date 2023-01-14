# frozen_string_literal: true
require_relative '../helpers/item_api'
require_relative '../helpers/item_group_ids_api'

describe "Ebay browse api" do
  context 'when find certain group of items by group id', :test do
    before(:all) do
      @response = ItemApi.new.get_group_of_items(110552751758)
    end

    let(:response_body) { JSON(@response.body) }

    it 'check response code' do
      expect(@response.code).to eq 200
    end

    it 'checks the response body' do
      expect(response_body["items"][0]["title"]).to include( "2Pcs Snap On Protective Case Cover Glass Screen Protector F Apple Watch 41/45MM")
    end
  end

  context 'when API codes' do
    it 'gets response' do
      response = ItemsGroupIdsApi.new.get_items(385348059626)
      expect(response.code).to eq 200
    end

    it 'checks response on the request' do
      response = ItemsGroupIdsApi.new.get_items(234743947831)
      expect(response.code).to eq 200
    end
  end

end
