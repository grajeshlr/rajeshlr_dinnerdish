class ItemsController < ApplicationController
    before_action  :set_item, only: [:show, :edit, :update, :destroy]

    def show
        @category_title =  Category.find(params[:id])
    end
  
    def index
        @items = Item.all
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
        if @item.save
          flash[:notice] = 'recipe was created secussfully.'
          redirect_to @item
        else
          render 'new'
        end
    end
    
    def edit

    end

    def update
       if @item.update(item_params)
          flash[:success] = "Item Updated successfully.."
          redirect_to items_path
       else
        render action: :edit
       end
    end

    def destroy
        @item.destroy
        flash[:notice] = 'Successfully deleted.'
        redirect_to items_path
    end

    private

    def set_item
        @item = Item.find(params[:id])
    end

    def item_params
        params.require(:item).permit(:name, :description, :price, :category_id)
    end
end