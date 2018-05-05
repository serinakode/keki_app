require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :user_id => 2,
        :first_name => "First Name",
        :last_name => "Last Name",
        :username => "Username",
        :user_address => 3,
        :short_bio => "MyText",
        :image_data => "MyText"
      ),
      Profile.create!(
        :user_id => 2,
        :first_name => "First Name",
        :last_name => "Last Name",
        :username => "Username",
        :user_address => 3,
        :short_bio => "MyText",
        :image_data => "MyText"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
