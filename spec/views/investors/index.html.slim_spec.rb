require 'rails_helper'

RSpec.describe "investors/index", type: :view do
  before(:each) do
    assign(:investors, [
      Investor.create!(
        :name => "Name",
        :email => "Email",
        :password => "Password"
      ),
      Investor.create!(
        :name => "Name",
        :email => "Email",
        :password => "Password"
      )
    ])
  end

  it "renders a list of investors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
