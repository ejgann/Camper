class DestinationsController < ApplicationController
     def create
        @destination = Destination.create(user_id: params[:user_id], location_id: params[:location_id])
        redirect_to users_path
     end

end


git remote add demo_app 'git@github.com:levelone/demo_app.git'