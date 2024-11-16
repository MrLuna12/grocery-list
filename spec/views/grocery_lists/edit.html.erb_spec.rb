require 'rails_helper'

RSpec.describe "grocery_lists/edit", type: :view do
  let(:grocery_list) {
    GroceryList.create!()
  }

  before(:each) do
    assign(:grocery_list, grocery_list)
  end

  it "renders the edit grocery_list form" do
    render

    assert_select "form[action=?][method=?]", grocery_list_path(grocery_list), "post" do
    end
  end
end
