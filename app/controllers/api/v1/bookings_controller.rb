class Api::V1::BookingsController < ApiController
  def index
    @facility = Facility.find(params[:facility_id])
  end
end
