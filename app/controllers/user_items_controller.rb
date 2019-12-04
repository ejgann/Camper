class UserItemsController < ApplicationController

    def index
        @user = User.all[0]
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
end
