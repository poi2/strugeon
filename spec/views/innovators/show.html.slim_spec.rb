require 'rails_helper'

RSpec.describe "innovators/show", type: :view do
  before(:each) do
    @innovator = assign(:innovator, Innovator.create!(
      :name => "Name",
      :email => "Email",
      :password => "Password",
      :description => "MyText",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Url/)
  end
end
