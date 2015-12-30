require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :title => "MyString",
      :description => "MyText",
      :target_amount => 1
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "textarea#article_description[name=?]", "article[description]"

      assert_select "input#article_target_amount[name=?]", "article[target_amount]"
    end
  end
end
