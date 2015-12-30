require 'rails_helper'

RSpec.describe "investments/show", type: :view do
  before(:each) do
    @investment = assign(:investment, Investment.create!(
      :ticked_id => 1,
      :investor_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
