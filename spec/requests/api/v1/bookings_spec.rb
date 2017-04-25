require 'rails_helper'

RSpec.describe "Bookings", type: :request do
  let(:facility) { create(:facility,
    name: 'Sauna',
    description: 'Hot hot Sauna',
    rules: 'No Underwear',
    status: true)}

  let!(:booking) { create(:booking,
     name: 'Casper',
     start_time: '2017-04-01 12:09',
     facility_id: facility.id)}

  describe "GET /api/v1/facilities/:facility_id/bookings" do
     it "it should return all bookings, name and date" do
       get api_v1_facility_bookings_path(facility.id)

       expected_response = [{
         'id' => booking.id,
         'name' => 'Casper',
         'start_time' => '2017-04-01T12:09:00.000Z'
       }]

       expect(response_json).to eq expected_response
       expect(response.status).to eq 200
     end
   end
end
