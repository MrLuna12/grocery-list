require 'rails_helper'

RSpec.describe "grocery_lists/show", type: :view do
  before(:each) do
    assign(:grocery_list, GroceryList.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
