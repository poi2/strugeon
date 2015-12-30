require 'rails_helper'

RSpec.describe "innovators/edit", type: :view do
  before(:each) do
    @innovator = assign(:innovator, Innovator.create!(
      :name => "MyString",
      :email => "MyString",
      :password => "MyString",
      :description => "MyText",
      :url => "MyString"
    ))
  end

  it "renders the edit innovator form" do
    render

    assert_select "form[action=?][method=?]", innovator_path(@innovator), "post" do

      assert_select "input#innovator_name[name=?]", "innovator[name]"

      assert_select "input#innovator_email[name=?]", "innovator[email]"

      assert_select "input#innovator_password[name=?]", "innovator[password]"

      assert_select "textarea#innovator_description[name=?]", "innovator[description]"

      assert_select "input#innovator_url[name=?]", "innovator[url]"
    end
  end
end
