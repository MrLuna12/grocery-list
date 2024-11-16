require 'rails_helper'

RSpec.describe "grocery_items/index", type: :view do
  before(:each) do
    assign(:grocery_items, [
      GroceryItem.create!(),
      GroceryItem.create!()
    ])
  end

  it "renders a list of grocery_items" do
    render
    cell_selector = 'div>p'
  end
end
