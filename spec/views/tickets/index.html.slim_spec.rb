require 'rails_helper'

RSpec.describe "tickets/index", type: :view do
  before(:each) do
    assign(:tickets, [
      Ticket.create!(
        :article_id => 1,
        :price => 2,
        :reword => "MyText"
      ),
      Ticket.create!(
        :article_id => 1,
        :price => 2,
        :reword => "MyText"
      )
    ])
  end

  it "renders a list of tickets" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
