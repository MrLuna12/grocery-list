class GroceryItemsController < ApplicationController
  def index
    @grocery_items = GroceryItem.all
  end

  def new
    GroceryItem.new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
