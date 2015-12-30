require 'rails_helper'

RSpec.describe "innovators/index", type: :view do
  before(:each) do
    assign(:innovators, [
      Innovator.create!(
        :name => "Name",
        :email => "Email",
        :password => "Password",
        :description => "MyText",
        :url => "Url"
      ),
      Innovator.create!(
        :name => "Name",
        :email => "Email",
        :password => "Password",
        :description => "MyText",
        :url => "Url"
      )
    ])
  end

  it "renders a list of innovators" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
