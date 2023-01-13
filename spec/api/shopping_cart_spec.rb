# frozen_string_literal: true

describe 'test shopping basket' do
  context 'add item in the basket which does not support Pay Pal ' do
    before(:all) do
      @body = { 'itemId': 'v1|110552873120|0', 'quantity': '2' }
      @response = RequestApi.new.add_item_in_basket(@body)
    end

    let(:response_body) { JSON(@response.body) }

    it 'check response code' do
      expect(@response.code).to eq 409
    end
    it 'check error message' do
      expect(response_body['message']).to eql('The item does not meet the cart criteria and cannot be added to the cart.')
    end
  end
end
