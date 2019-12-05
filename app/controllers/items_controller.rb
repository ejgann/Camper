class ItemsController < ApplicationController

    before_action :find_item, only: [:show]
    before_action :logged_in?
    
    def index
        @items = Item.all
    end

    def show
    end

    def find_item
        @item = Item.find(params[:id])
    end
end
