# frozen_string_literal: true

describe 'Ebay API' do
  context 'when search' do
    before(:all) do
      @response = SearchEbayApi.new.search_for('lg')
    end

    let(:search_result) { JSON(@response.body) }

    it 'checks response code of search request' do
      expect(@response.code).to eq 200
    end

    it 'checks search result' do
      puts search_result
      expect(search_result['itemSummaries'][0]['title']).to include 'LG G7 ThinQ G710VMP 64GB 4GB RAM 6.1‘’ Unlocked Original Smartphone '
    end
  end

  context 'when search refinements' do
    before do
      @response = SearchEbayApi.new.search_refinements('macbook')
    end

    let(:search_result) { JSON(@response.body) }

    it 'checks response code of refinements of items' do
      expect(@response.code).to eq 200
    end

    it 'checks response body' do
      expect(search_result['refinement']).to include('categoryDistributions' => [{ 'categoryId' => '171485',
                                                                                   'categoryName' => 'Tablets & eBook Readers', 'refinementHref' => 'https://api.sandbox.ebay.com/buy/browse/v1/item_summary/search?q=macbook&limit=3&fieldgroups=ASPECT_REFINEMENTS%2CCATEGORY_REFINEMENTS%2CCONDITION_REFINEMENTS%2CBUYING_OPTION_REFINEMENTS&category_ids=171485' }])
    end

    before do
      @response_shirt = SearchEbayApi.new.search_with_filter('shirt', '15724', 'Red')
    end

    let(:search_result_shirt) { JSON(@response_shirt.body) }
    it 'checks response code of filtered product ' do
      expect(@response_shirt.code).to eq 200
    end

    # it 'checks response body' do
    #   expect(search_result_shirt['itemSummaries']).to include (["filtered_page_href" => "https://api.sandbox.ebay.com/buy/browse/v1/item_summary/search?q=shirt&aspect_filter=categoryId:15724,Color:{Red}"])
    # end
  end
end
