# frozen_string_literal: true

describe 'Marketing API' do
  context 'when search merchandised product' do
    before(:all) do
      @response = MarketingApi.new.get_merchandised_products
    end

    let(:search_result) { JSON(@response.body) }

    it 'checks response code of search request' do
      expect(@response.code).to eq 200
    end
  end
end
