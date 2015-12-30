require 'rails_helper'

RSpec.describe "investors/new", type: :view do
  before(:each) do
    assign(:investor, Investor.new(
      :name => "MyString",
      :email => "MyString",
      :password => "MyString"
    ))
  end

  it "renders new investor form" do
    render

    assert_select "form[action=?][method=?]", investors_path, "post" do

      assert_select "input#investor_name[name=?]", "investor[name]"

      assert_select "input#investor_email[name=?]", "investor[email]"

      assert_select "input#investor_password[name=?]", "investor[password]"
    end
  end
end
