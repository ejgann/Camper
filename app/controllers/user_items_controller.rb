class UserItemsController < ApplicationController
    
    before_action :logged_in?
    
    def index
        @user_items = User.find(session[:user]["id"]).user_items
    end

    def create
        @user_item = UserItem.new(user_id: params[:user_id], item_id: params[:item_id])
        found_match = false
         UserItem.all.each do |item| 
            if item.item_id == @user_item.item_id && item.user_id == @user_item.user_id 
                found_match = true
            end
        end
        if !found_match
            @user_item.save
        end
    end

    def destroy
        user_item = UserItem.find(params[:id])
        user_item.delete
        redirect_to user_items_path
    end

end
