require 'rails_helper'

RSpec.describe "user_profiles/edit", type: :view do
  before(:each) do
    @user_profile = assign(:user_profile, UserProfile.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :postal_code => "MyString",
      :country => "MyString",
      :user => nil
    ))
  end

  it "renders the edit user_profile form" do
    render

    assert_select "form[action=?][method=?]", user_profile_path(@user_profile), "post" do

      assert_select "input#user_profile_first_name[name=?]", "user_profile[first_name]"

      assert_select "input#user_profile_last_name[name=?]", "user_profile[last_name]"

      assert_select "input#user_profile_address[name=?]", "user_profile[address]"

      assert_select "input#user_profile_city[name=?]", "user_profile[city]"

      assert_select "input#user_profile_postal_code[name=?]", "user_profile[postal_code]"

      assert_select "input#user_profile_country[name=?]", "user_profile[country]"

      assert_select "input#user_profile_user_id[name=?]", "user_profile[user_id]"
    end
  end
end
