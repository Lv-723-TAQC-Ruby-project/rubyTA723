require_relative '../helpers/item_group_ids_api'

describe 'API codes', :myTest do
  it 'getting response' do
    response = ItemsGroupIdsApi.new.get_items(385348059626)
    expect(response.code).to eq 200
  end

  it 'checking response on the request' do
    response = ItemsGroupIdsApi.new.get_items(234743947831)
    expect(response.code).to eq 200
  end
end
