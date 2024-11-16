require 'rails_helper'

RSpec.describe "grocery_lists/index", type: :view do
  before(:each) do
    assign(:grocery_lists, [
      GroceryList.create!(),
      GroceryList.create!()
    ])
  end

  it "renders a list of grocery_lists" do
    render
    cell_selector = 'div>p'
  end
end
