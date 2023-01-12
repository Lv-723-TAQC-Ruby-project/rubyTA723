require_relative '../helpers/ebay_api'

describe 'test advanced search api' do
  context 'when find item with free shipping' do
    before(:all) do
      @body = {}
      @response = RequestApi.new.find_item_with_free_shipping("your app id", "tolkien")
    end

    let(:response_body) {JSON(@response.body)}

    it 'check response code' do
      expect(@response.code).to eq 200
    end

    # it 'check response body' do
    #   #TO DO
    # end
  end
end

