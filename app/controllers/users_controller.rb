class UsersController < ApplicationController
    
    before_action :logged_in?

    def welcome
        
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(strong_params)
        if @user.valid?
            @user.save
            session[:user] = @user
            redirect_to welcome_path
        else
            render :new
        end
    end

    def show
        @user = User.find_by(params[:id])
    end

    private

    def strong_params
        params.require(:user).permit(:name)
    end
end
