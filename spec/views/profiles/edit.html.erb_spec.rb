require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user_id => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :username => "MyString",
      :user_address => 1,
      :short_bio => "MyText",
      :image_data => "MyText"
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[user_id]"

      assert_select "input[name=?]", "profile[first_name]"

      assert_select "input[name=?]", "profile[last_name]"

      assert_select "input[name=?]", "profile[username]"

      assert_select "input[name=?]", "profile[user_address]"

      assert_select "textarea[name=?]", "profile[short_bio]"

      assert_select "textarea[name=?]", "profile[image_data]"
    end
  end
end
