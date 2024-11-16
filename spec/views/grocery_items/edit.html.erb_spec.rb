require 'rails_helper'

RSpec.describe "grocery_items/edit", type: :view do
  let(:grocery_item) {
    GroceryItem.create!()
  }

  before(:each) do
    assign(:grocery_item, grocery_item)
  end

  it "renders the edit grocery_item form" do
    render

    assert_select "form[action=?][method=?]", grocery_item_path(grocery_item), "post" do
    end
  end
end
