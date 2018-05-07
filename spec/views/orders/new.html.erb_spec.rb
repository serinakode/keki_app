require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :user => nil,
      :product => nil,
      :profile => nil,
      :delivery_comment => "MyText"
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[user_id]"

      assert_select "input[name=?]", "order[product_id]"

      assert_select "input[name=?]", "order[profile_id]"

      assert_select "textarea[name=?]", "order[delivery_comment]"
    end
  end
end
