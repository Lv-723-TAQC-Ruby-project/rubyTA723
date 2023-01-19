# frozen_string_literal: true

describe 'Metadata API' do
  before(:all) do
    response = Auth.new.log_in(CLIENT_ID, CLIENT_SECRET, SCOPE_API)
    @token = JSON(response.body)['access_token']
  end

  context 'when search for item condition policies' do
    before(:all) do
      @body = { 'categoryIds': '181923|90638' }
      @response = MetadataItemsConditionPoliciesApi.new(@token).find_item_condition_policies(@body)
    end

    let(:response_body) { JSON(@response.body) }

    it 'checks response code' do
      expect(@response.code).to eq 200
    end

    it 'checks response body for first item' do
      expect(response_body['itemConditionPolicies']).to include({ 'categoryTreeId' => '0', 'categoryId' => '181923',
                                                                  'itemConditionRequired' => true })
    end

    it 'checks response body for second item' do
      expect(response_body['itemConditionPolicies']).to include({ 'categoryTreeId' => '0', 'categoryId' => '90638',
                                                                  'itemConditionRequired' => false })
    end
  end
end
