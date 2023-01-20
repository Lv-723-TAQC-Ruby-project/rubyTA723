# frozen_string_literal: true

describe 'Marketing API' do
  before(:all) do
    response = Auth.new.log_in(CLIENT_ID, CLIENT_SECRET, SCOPE_API)
    @token = JSON(response.body)['access_token']
  end

  context 'when search merchandised product' do
    before(:all) do
      @response = MarketingApi.new(@token).get_merchandised_products
    end

    let(:search_result) { JSON(@response.body) }

    it 'checks response code of search request' do
      expect(@response.code).to eq 200
    end
  end
end
