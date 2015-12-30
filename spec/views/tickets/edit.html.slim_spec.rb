require 'rails_helper'

RSpec.describe "tickets/edit", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      :article_id => 1,
      :price => 1,
      :reword => "MyText"
    ))
  end

  it "renders the edit ticket form" do
    render

    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do

      assert_select "input#ticket_article_id[name=?]", "ticket[article_id]"

      assert_select "input#ticket_price[name=?]", "ticket[price]"

      assert_select "textarea#ticket_reword[name=?]", "ticket[reword]"
    end
  end
end
