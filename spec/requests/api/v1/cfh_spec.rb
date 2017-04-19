require 'rails_helper'

RSpec.describe Api::V1::CfhsController, type: :request do
  let!(:cfh) { create(:cfh, title: 'Burning', message: 'Pants is burning', status: true) }

  describe 'POST /v1/cfhs' do
    it 'should collect call for help message from mobile client' do
      post '/api/v1/cfhs'

      expected_response = [{
        'id' => cfh.id, 'title' => 'Burning', 'message' => 'Pants is burning', 'status' => true
      }]

      expect(response_json).to eq expected_response
      expect(response.status).to eq 200
    end
  end
end
