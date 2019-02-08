class ItemsController < ApplicationController
    def index
        @items = Item.all
        @item = Item.new
    end

    def create
        Item.create(item_params)
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to root_item_path
    end

    private

    def item_params
        params.require(:item).permit(:name, :quantity)
    end
end
