class Api::V1::HelprequestsController < ApplicationController
  def create
    @helprequest = Helprequest.new help_request
    if @helprequest.save
      render json: { message: "successful"}, status: 204
    end
  end

private
  def help_request
    params.permit(:title, :message, :status)
  end
end
