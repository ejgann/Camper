class SessionsController < ApplicationController

    def index
    end
    
    def new
        if sessions["username"]
            redirect_to "/"
        else
            render :new
        end
    end

    def create
        username = params[:username]
        user = User.find_by(name: username)
        if user 
            sessions["username"] == user.username
            redirect_to welcome_path
        else
            
        end
    end

    
end
