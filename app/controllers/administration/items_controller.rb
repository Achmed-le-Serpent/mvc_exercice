# frozen_string_literal: true

module Administration
  class ItemsController < AdministrationController
    before_action :set_item, only: [:update]

    def index
      @items = Item.all
    end

    def create
      if Item.create(item_params)
        redirect_to administration_items_path, notice: "L'article a bien été créé."
      else
        redirect_back fallback_location: root_path, alert: "L'article n'a pas créé."
      end
    end

    def update
      if @item.update(item_params)
        redirect_to administration_items_path, notice: "L'article a bien été mis à jour."
      else
        redirect_back fallback_location: root_path, alert: "L'article n'a pas été mis à jour."
      end
    end

    private

    def item_params
    	params.require(:item).permit(:original_price, :discount_percentage, :name, :category_id)
    end

    def set_item
      @item = Item.find(params[:id])
    end
  end
end
