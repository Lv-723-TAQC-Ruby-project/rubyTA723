# frozen_string_literal: true

describe 'API shopping basket' do
  context 'when add item in the basket which does not support Pay Pal' do
    before(:all) do
      @body = { 'itemId': 'v1|110552873120|0', 'quantity': '2' }
      @response = ShoppingCartApi.new.add_item_in_basket(@body)
    end

    let(:response_body) { JSON(@response.body) }
    let(:expected_error_message) { 'The item does not meet the cart criteria and cannot be added to the cart.' }

    it 'checks response code' do
      expect(@response.code).to eq 409
    end

    it 'checks error message' do
      expect(response_body['message']).to eq(expected_error_message)
    end
  end
end
