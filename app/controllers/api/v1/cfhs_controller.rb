class Api::V1::CfhsController < ApplicationController
  def create
   @cfh = Cfh.new cfh_params
   if @cfh.save
     render json: { message: "successful"}, status: 204
   end
 end

 private

 def cfh_params
   params.require(:cfh).permit(:title, :message, :status)
 end
end
