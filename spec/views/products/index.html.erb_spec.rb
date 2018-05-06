require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :seller_id => 2,
        :product_name => "Product Name",
        :description => "MyText",
        :price => 3,
        :image_data => "MyText",
        :quantity_available => 4
      ),
      Product.create!(
        :seller_id => 2,
        :product_name => "Product Name",
        :description => "MyText",
        :price => 3,
        :image_data => "MyText",
        :quantity_available => 4
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Product Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
