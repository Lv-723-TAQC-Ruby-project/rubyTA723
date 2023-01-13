require 'rest-client'
require 'json'
require_relative '../helpers/item_group_ids_api'

describe 'checking successful code', :myTest do
  before(:all) do
    @response = ItemsGroupIdsApi.new.get_items(385348059626)
  end

  it 'getting response' do
    expect(@response.code).to eq 200
  end
end