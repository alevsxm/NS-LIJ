require 'rails_helper'

RSpec.describe "review_articles/new", :type => :view do
  before(:each) do
    assign(:review_article, ReviewArticle.new(
      :topic => "MyString",
      :summary => "MyText",
      :article_link => "MyText"
    ))
  end

  it "renders new review_article form" do
    render

    assert_select "form[action=?][method=?]", review_articles_path, "post" do

      assert_select "input#review_article_topic[name=?]", "review_article[topic]"

      assert_select "textarea#review_article_summary[name=?]", "review_article[summary]"

      assert_select "textarea#review_article_article_link[name=?]", "review_article[article_link]"
    end
  end
end
