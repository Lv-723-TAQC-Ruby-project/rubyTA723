require_relative '../helpers/item_api'
require 'json'
describe "ebay browse api" do
  context 'when find certain group of items by group id', :test do
    before(:all) do
      @body = {}
      @response = ItemApi.new.get_group_of_items(110552751758)
    end
    let(:response_body) { JSON(@response.body) }

    it 'check response code' do
      expect(@response.code).to eq 200
    end


  end

end