require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :seller_id => 1,
      :product_name => "MyString",
      :description => "MyText",
      :price => 1,
      :image_data => "MyText",
      :quantity_available => 1
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[seller_id]"

      assert_select "input[name=?]", "product[product_name]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "input[name=?]", "product[price]"

      assert_select "textarea[name=?]", "product[image_data]"

      assert_select "input[name=?]", "product[quantity_available]"
    end
  end
end
