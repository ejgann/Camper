class DestinationsController < ApplicationController
     

   def index
      @destinations = User.find(session[:user]["id"]).locations
     end

   def create
        @destination = Destination.new(user_id: params[:user_id], location_id: params[:location_id])
        found_match = false
        Destination.all.each do |destination|
         if destination.location_id == params[:location_id] && destination.user_id == params[:user_id]
            found_match = true
         end
         end
         if !found_match
            @destination.save
         end
      end

      def logged_in?
         
      end

end

