require 'rails_helper'

RSpec.describe Api::V1::CfhsController, type: :request do
  let!(:cfh) { create(:cfh, title: 'Burning', message: 'Pants is burning', status: true) }

  describe 'POST /v1/cfhs' do
    it 'should collect call for help message from mobile client' do

      params = {
        title: 'Burning',
        message: 'Pants is burning',
        status: true
      }

      post '/api/v1/cfhs', params

      response.code.should eq "204"
    end
  end
end
