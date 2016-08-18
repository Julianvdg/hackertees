require 'rails_helper'

RSpec.describe "user_profiles/index", type: :view do
  before(:each) do
    assign(:user_profiles, [
      UserProfile.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :city => "City",
        :postal_code => "Postal Code",
        :country => "Country",
        :user => nil
      ),
      UserProfile.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :city => "City",
        :postal_code => "Postal Code",
        :country => "Country",
        :user => nil
      )
    ])
  end

  it "renders a list of user_profiles" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
