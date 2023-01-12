# frozen_string_literal: true

require_relative '../helpers/ebay_api'
require 'json'

describe 'Ebay API' do
  context 'when search API', :test do
    before(:all) do
      @response = EbayApi.new.search_for('lg')
    end
    let(:search_result) { JSON(@response.body) }
    it 'checks response code of search request' do
      expect(@response.code).to eq 200
    end
    it 'check response body' do
      expect(search_result['itemSummaries'][0]['title']).to include 'LG Optimus Phone FreedomPOP LG-LS720VSLRB F3 LTE 1.2 GHz 1.24 GB mem Freedompop'
    end
  end
end
