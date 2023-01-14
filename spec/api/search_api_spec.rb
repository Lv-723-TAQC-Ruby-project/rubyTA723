# frozen_string_literal: true

describe 'Ebay API' do
  context 'when search', :test do
    before(:all) do
      @response = SearchEbayApi.new.search_for('lg')
    end

    let(:search_result) { JSON(@response.body) }

    it 'checks response code of search request' do
      expect(@response.code).to eq 200
    end

    it 'checks response body' do
      expect(search_result['itemSummaries'][0]['title']).to include 'LG Optimus Phone FreedomPOP LG-LS720VSLRB F3 LTE 1.2 GHz 1.24 GB mem Freedompop'
    end
  end
end
