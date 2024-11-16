FactoryBot.define do
  factory 'grocery_item' do
    name { 'mango' }
    quantity { 1 }
    association :grocery_list
  end
end