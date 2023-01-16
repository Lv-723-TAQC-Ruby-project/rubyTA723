# frozen_string_literal: true

describe 'Ebay browse api' do
  context 'when find certain group of items by group id', :test do
    before(:all) do
      @response = ItemApi.new.get_group_of_items(110_552_751_758)
    end

    let(:response_body) { JSON(@response.body) }

    it 'check response code' do
      expect(@response.code).to eq 200
    end

    it 'checks the response body' do
      expect(response_body['items'][0]['title']).to include('2Pcs Snap On Protective Case Cover Glass Screen Protector F Apple Watch 41/45MM')
    end
  end

  context 'when API codes' do
    it 'gets response' do
      response = ItemsGroupIdsApi.new.get_items(385_348_059_626)
      expect(response.code).to eq 200
    end

    it 'checks response on the request' do
      response = ItemsGroupIdsApi.new.get_items(234_743_947_831)
      expect(response.code).to eq 200
    end
  end
end
