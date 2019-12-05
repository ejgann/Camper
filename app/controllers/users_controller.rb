class UsersController < ApplicationController

    before_action :logged_in?, except: [:new, :create]

    def welcome 
    end

    def new
       if session[:user] != nil
        redirect_to welcome_path
       else
        @user = User.new
        render :new
       end
    end

    def create
        @user = User.new(strong_params)
        password = strong_params["password"]
        confirm_password = strong_params["password_confirmation"]
        if @user.valid? && password == confirm_password
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
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
