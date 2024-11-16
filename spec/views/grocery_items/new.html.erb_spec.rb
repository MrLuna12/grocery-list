require 'rails_helper'

RSpec.describe "grocery_items/new", type: :view do
  before(:each) do
    assign(:grocery_item, GroceryItem.new())
  end

  it "renders new grocery_item form" do
    render

    assert_select "form[action=?][method=?]", grocery_items_path, "post" do
    end
  end
end
