require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :user => nil,
      :product => nil,
      :profile => nil,
      :delivery_comment => "MyText"
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[user_id]"

      assert_select "input[name=?]", "order[product_id]"

      assert_select "input[name=?]", "order[profile_id]"

      assert_select "textarea[name=?]", "order[delivery_comment]"
    end
  end
end
