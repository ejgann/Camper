class DestinationsController < ApplicationController
     def create
        @destination = Destination.create(user_id: params[:user_id], location_id: params[:location_id])
        redirect_to destinations_path
     end

     def index
      @destinations = Destination.all
     end

end

