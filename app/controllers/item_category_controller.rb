class ItemCategoryController < ApplicationController
  before_action :fetch_item_category, only: [:show, :delete, :update]

  def index
    @item_category = ItemCategory.all
  end

  def new
    @item_category = ItemCategory.new
  end

  def create
    @item_category.create(category_params)

    redirect_to item_category_path
  end

  def show
    redirect_to item_category_path
  end

  def delete
    @item_category.destroy_all

    redirect_to item_category_index_path, flash[:notice] = "Category deleted successfully"
  end

  def update
    @item_category.update(category_params)
    redirect_to item_category_path, flash[:notice] = "Category updated successfully"
  end

  private

  # Strong params to filter not needed params
  def category_params
    params.require(:item_category).permit(:name)
  end

  def fetch_item_category
    @item_category = ItemCategory.find_by(id: params[:id])
  end
end
