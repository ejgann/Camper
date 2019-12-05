class SessionsController < ApplicationController

    
    def new
        if session[:name]
            redirect_to welcome_path
        else
            render :new
        end
    end

    def create
       name = params[:name]
        user = User.find_by(name: name)
        if user 
            session[:name] = user.name
            redirect_to welcome_path
        else
            flash[:error] = "No user found with that name"
            redirect_to login_path
        end
    end

    def logout
      session.delete :user
      redirect_to login_path
    end

    
end
