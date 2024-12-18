class GroceryListsController < ApplicationController
  before_action :set_grocery_list, only: %i[ show edit update destroy ]

  # GET /grocery_lists or /grocery_lists.json
  def index
    @grocery_lists = GroceryList.all
  end

  # GET /grocery_lists/1 or /grocery_lists/1.json
  def show
  end

  # GET /grocery_lists/new
  def new
    @grocery_list = GroceryList.new
  end

  # GET /grocery_lists/1/edit
  def edit
  end

  # POST /grocery_lists or /grocery_lists.json
  def create
    @grocery_list = GroceryList.new(grocery_list_params)

    respond_to do |format|
      if @grocery_list.save
        format.html { redirect_to @grocery_list, notice: "Grocery list was successfully created." }
        format.json { render :show, status: :created, location: @grocery_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grocery_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grocery_lists/1 or /grocery_lists/1.json
  def update
    respond_to do |format|
      if @grocery_list.update(grocery_list_params)
        format.html { redirect_to @grocery_list, notice: "Grocery list was successfully updated." }
        format.json { render :show, status: :ok, location: @grocery_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grocery_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grocery_lists/1 or /grocery_lists/1.json
  def destroy
    @grocery_list.destroy!

    respond_to do |format|
      format.html { redirect_to grocery_lists_path, status: :see_other, notice: "Grocery list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grocery_list
      @grocery_list = GroceryList.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def grocery_list_params
      params.fetch(:grocery_list, {})
    end
end
