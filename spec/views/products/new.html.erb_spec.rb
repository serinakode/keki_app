require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :seller_id => 1,
      :product_name => "MyString",
      :description => "MyText",
      :price => 1,
      :image_data => "MyText",
      :quantity_available => 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[seller_id]"

      assert_select "input[name=?]", "product[product_name]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "input[name=?]", "product[price]"

      assert_select "textarea[name=?]", "product[image_data]"

      assert_select "input[name=?]", "product[quantity_available]"
    end
  end
end
