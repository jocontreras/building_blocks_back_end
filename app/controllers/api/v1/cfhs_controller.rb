class Api::V1::CfhsController < ApplicationController
  def create
    @cfh = Cfh.new help_request
    if @cfh.save
      render json: { message: "successful"}, status: 204
    end
  end

private
  def help_request
    params.permit(:title, :message, :status)
  end
end
