# frozen_string_literal: true

describe 'Ebay API' do
  before(:all) do
    responce = Auth.new.log_in(CLIENT_ID, CLIENT_SECRET, SCOPE_API)
    @token = JSON(responce.body)['access_token']
  end

  context 'when search' do
    before(:all) do
      @response = SearchEbayApi.new(@token).search_for('lg')
    end

    let(:search_result) { JSON(@response.body) }

    it 'checks response code of search request' do
      expect(@response.code).to eq 200
    end

    it 'checks search result' do
      puts search_result
      expect(search_result['itemSummaries'][0]['title']).to include 'LG Optimus Phone FreedomPOP LG-LS720VSLRB F3 LTE 1.2 GHz 1.24 GB mem Freedompop'
    end
  end

  context 'when search refinements' do
    before do
      @response_macbook = SearchEbayApi.new(@token).search_refinements('macbook')
    end

    let(:search_result_macbook) { JSON(@response_macbook.body) }

    it 'checks response code of refinements of items' do
      expect(@response_macbook.code).to eq 200
    end

    it 'checks response body' do
      expect(search_result_macbook['refinement']).to include('categoryDistributions' => [{ 'categoryId' => '171485',
                                                                                           'categoryName' => 'Tablets & eBook Readers', 'refinementHref' => 'https://api.sandbox.ebay.com/buy/browse/v1/item_summary/search?q=macbook&limit=3&fieldgroups=ASPECT_REFINEMENTS%2CCATEGORY_REFINEMENTS%2CCONDITION_REFINEMENTS%2CBUYING_OPTION_REFINEMENTS&category_ids=171485' }])
    end
  end
  context do
    before do
      @response_shirt = SearchEbayApi.new(@token).search_with_filter('shirt', '15724', 'Red')
    end

    let(:search_result_shirt) { JSON(@response_shirt.body) }
    it 'checks response code of filtered product ' do
      expect(@response_shirt.code).to eq 200
    end

    it 'checks response body' do
      expect(search_result_shirt['itemSummaries'][0]).to include({ 'itemId' => 'v1|110552800458|410108660405',
                                                                   'title' => 'Shirt2', 'topRatedBuyingExperience' => false })
    end
  end
end

