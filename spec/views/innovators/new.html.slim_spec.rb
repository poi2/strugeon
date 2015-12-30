require 'rails_helper'

RSpec.describe "innovators/new", type: :view do
  before(:each) do
    assign(:innovator, Innovator.new(
      :name => "MyString",
      :email => "MyString",
      :password => "MyString",
      :description => "MyText",
      :url => "MyString"
    ))
  end

  it "renders new innovator form" do
    render

    assert_select "form[action=?][method=?]", innovators_path, "post" do

      assert_select "input#innovator_name[name=?]", "innovator[name]"

      assert_select "input#innovator_email[name=?]", "innovator[email]"

      assert_select "input#innovator_password[name=?]", "innovator[password]"

      assert_select "textarea#innovator_description[name=?]", "innovator[description]"

      assert_select "input#innovator_url[name=?]", "innovator[url]"
    end
  end
end
