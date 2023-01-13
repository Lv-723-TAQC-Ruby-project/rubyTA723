# frozen_string_literal: true

# not completed

describe 'test shopping basket' do
  context 'add item in the basket' do
    before(:all) do
      @body = { 'itemId': 'v1|110552832245|0', 'quantity': '2' }
      @response = RequestApi.new.add_item_in_basket(@body)
    end

    let(:response_body) { JSON(@response.body) }

    it 'check if order was created' do
      expect(@response.code).to eq 409
    end
  end
end
