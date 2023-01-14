# frozen_string_literal: true
require_relative '../helpers/metadata_items_condition_policies_api'

  describe 'Metadata API'do
    context 'when search for item condition policies' do
      before(:all) do
      @body = {'categoryIds': "181923|90638"}
      @response = MetadataItemsConditionPoliciesApi.new.find_item_condition_policies(@body)
    end

    let(:response_body) { JSON(@response.body) }

      it 'checks response code' do
      expect(@response.code).to eq 200
    end

      it 'checks response body for first item' do
        expect(response_body["itemConditionPolicies"]).to include({"categoryTreeId" => "0","categoryId" => "181923", "itemConditionRequired" => true })
      end

      it "checks response body for second item" do
        expect(response_body["itemConditionPolicies"]).to include({"categoryTreeId" => "0","categoryId" => "90638", "itemConditionRequired" => false })
      end

    end
  end
