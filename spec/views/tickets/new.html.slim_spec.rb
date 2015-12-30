require 'rails_helper'

RSpec.describe "tickets/new", type: :view do
  before(:each) do
    assign(:ticket, Ticket.new(
      :article_id => 1,
      :price => 1,
      :reword => "MyText"
    ))
  end

  it "renders new ticket form" do
    render

    assert_select "form[action=?][method=?]", tickets_path, "post" do

      assert_select "input#ticket_article_id[name=?]", "ticket[article_id]"

      assert_select "input#ticket_price[name=?]", "ticket[price]"

      assert_select "textarea#ticket_reword[name=?]", "ticket[reword]"
    end
  end
end
