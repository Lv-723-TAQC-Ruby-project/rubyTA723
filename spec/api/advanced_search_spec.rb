# frozen_string_literal: true

describe 'test Browse Api, item' do
  context 'get item by legacy id' do
    before(:all) do
      @body = {}
      @response = RequestApi.new.get_by_legacy_id(110552832245)
    end
    let(:response_body) { JSON(@response.body) }
    it 'check response code' do
      expect(@response.code).to eq 200
    end
    it 'check response body' do
      expect(response_body["categoryPath"]).to eq("Cameras & Photo|Camera Drones")
      expect(response_body["title"]).to eq("Protocol Kaptur GPS II Wi-Fi Drone with HD Camera")
    end
  end
end
