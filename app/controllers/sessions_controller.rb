class SessionsController < ApplicationController

    
    def new
        if session[:user]
            redirect_to welcome_path
        else
            render :new
        end
    end

    def create
       name = params[:name]
        user = User.find_by(name: name)
        if user && user.authenticate(params[:password]) 
                session[:user] = user
                redirect_to welcome_path
        else
                flash[:error] = "Invalid username or password, please try again"
                redirect_to login_path
        end
    end

    def logout
      session.delete :user
      redirect_to login_path
    end

    
end
