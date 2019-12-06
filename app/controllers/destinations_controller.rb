class DestinationsController < ApplicationController

   before_action :logged_in?

   def index
      @destinations = User.find(session[:user]["id"]).destinations
     end

     def destroy
      destination = Destination.find(params[:id])
      destination.delete
     redirect_to destinations_path
   end

   def create
        @destination = Destination.new(user_id: params[:user_id], location_id: params[:location_id])
        found_match = false
        Destination.all.each do |destination|
         if destination.location_id == @destination.location_id && destination.user_id == @destination.user_id
            found_match = true
          end
         end
         if !found_match
            flash.now[:success] = "added to your destinations!"
            @destination.save
         end
      end

end

