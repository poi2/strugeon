require 'rails_helper'

RSpec.describe "investments/new", type: :view do
  before(:each) do
    assign(:investment, Investment.new(
      :ticked_id => 1,
      :investor_id => 1
    ))
  end

  it "renders new investment form" do
    render

    assert_select "form[action=?][method=?]", investments_path, "post" do

      assert_select "input#investment_ticked_id[name=?]", "investment[ticked_id]"

      assert_select "input#investment_investor_id[name=?]", "investment[investor_id]"
    end
  end
end
