#not completed

describe 'test shopping basket' do
  context 'add item in the basket' do
    before(:all) do
      @body = {"itemId": "78", "quantity": 2}
      @response = RequestApi.new.add_item_in_basket(@body)
    end

    let(:response_body) { JSON(@response.body) }

    it 'check if order was created' do
      expect(@response.code).to eq 201
    end
  end
end
