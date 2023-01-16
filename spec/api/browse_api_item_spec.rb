# frozen_string_literal: true

describe 'Item: Browse Api' do
  context 'when get item by legacy id' do
    before(:all) do
      @response = RequestApi.new.get_by_legacy_id(110_552_832_245)
    end

    let(:response_body) { JSON(@response.body) }

    it 'checks response code' do
      expect(@response.code).to eq 200
    end

    it 'checks response body' do
      expect(response_body['categoryPath']).to eq('Cameras & Photo|Camera Drones')
      expect(response_body['title']).to eq('Protocol Kaptur GPS II Wi-Fi Drone with HD Camera')
    end
  end

  context 'when get item summary', :test do
    before(:all) do
      @response = SearchEbayApi.new.search_for('lg')
    end

    let(:search_result) { JSON(@response.body) }
    let(:expected_title) { 'LG Optimus Phone FreedomPOP LG-LS720VSLRB F3 LTE 1.2 GHz 1.24 GB mem Freedompop' }

    it 'checks response code of search request' do
      expect(@response.code).to eq 200
    end

    it 'checks response body' do
      expect(search_result['itemSummaries'][0]['title']).to eql(expected_title)
    end
  end

  context 'when search for item refinements', :test do
    before(:all) do
      @response = SearchEbayApi.new.search_refinements('macbook')
    end

    let(:response_body) { JSON(@response.body) }

    it 'checks response code of refinements of items' do
      expect(@response.code).to eq 200
    end

    it 'checks response body' do
      expect(response_body['refinement']).to include('categoryDistributions' => [{ 'categoryId' => '171485',
                                                                                   'categoryName' => 'Tablets & eBook Readers', 'refinementHref' => 'https://api.sandbox.ebay.com/buy/browse/v1/item_summary/search?q=macbook&limit=3&fieldgroups=ASPECT_REFINEMENTS%2CCATEGORY_REFINEMENTS%2CCONDITION_REFINEMENTS%2CBUYING_OPTION_REFINEMENTS&category_ids=171485' }])
    end
  end
end
