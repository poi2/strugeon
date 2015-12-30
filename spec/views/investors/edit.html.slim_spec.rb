require 'rails_helper'

RSpec.describe "investors/edit", type: :view do
  before(:each) do
    @investor = assign(:investor, Investor.create!(
      :name => "MyString",
      :email => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit investor form" do
    render

    assert_select "form[action=?][method=?]", investor_path(@investor), "post" do

      assert_select "input#investor_name[name=?]", "investor[name]"

      assert_select "input#investor_email[name=?]", "investor[email]"

      assert_select "input#investor_password[name=?]", "investor[password]"
    end
  end
end
