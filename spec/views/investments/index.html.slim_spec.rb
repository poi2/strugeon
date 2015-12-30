require 'rails_helper'

RSpec.describe "investments/index", type: :view do
  before(:each) do
    assign(:investments, [
      Investment.create!(
        :ticked_id => 1,
        :investor_id => 2
      ),
      Investment.create!(
        :ticked_id => 1,
        :investor_id => 2
      )
    ])
  end

  it "renders a list of investments" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
