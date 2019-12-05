class ApplicationController < ActionController::Base
    
    helper_method: logged_in?

    def home 
        if session[:user]
            redirect_to welcome_path
        else
            render :home
        end
    end

    def logged_in?
        session[:user] != nil
    end
end
