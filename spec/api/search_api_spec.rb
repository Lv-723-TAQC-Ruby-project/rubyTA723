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

    before do
      @response = SearchEbayApi.new.search_refinements('macbook')
    end
    it 'checks response code of refinements of items' do
      expect(@response.code).to eq 200
    end
    it 'checks response body' do
      expect(search_result["refinement"]).to include("categoryDistributions" => [{"categoryId" => "171485", "categoryName" => "Tablets & eBook Readers","refinementHref" => "https://api.sandbox.ebay.com/buy/browse/v1/item_summary/search?q=macbook&limit=3&fieldgroups=ASPECT_REFINEMENTS%2CCATEGORY_REFINEMENTS%2CCONDITION_REFINEMENTS%2CBUYING_OPTION_REFINEMENTS&category_ids=171485"}])
    end
  end
end
