class LocationsController < ApplicationController

    before_action :find_location, only: [:show]
    before_action :logged_in?

    def index
        @locations = Location.all
    end

    def show
    
    end

    def find_location
        @location = Location.find(params[:id])
    end


end
