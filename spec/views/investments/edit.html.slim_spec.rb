require 'rails_helper'

RSpec.describe "investments/edit", type: :view do
  before(:each) do
    @investment = assign(:investment, Investment.create!(
      :ticked_id => 1,
      :investor_id => 1
    ))
  end

  it "renders the edit investment form" do
    render

    assert_select "form[action=?][method=?]", investment_path(@investment), "post" do

      assert_select "input#investment_ticked_id[name=?]", "investment[ticked_id]"

      assert_select "input#investment_investor_id[name=?]", "investment[investor_id]"
    end
  end
end
