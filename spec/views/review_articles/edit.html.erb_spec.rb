require 'rails_helper'

RSpec.describe "review_articles/edit", :type => :view do
  before(:each) do
    @review_article = assign(:review_article, ReviewArticle.create!(
      :topic => "MyString",
      :summary => "MyText",
      :article_link => "MyText"
    ))
  end

  it "renders the edit review_article form" do
    render

    assert_select "form[action=?][method=?]", review_article_path(@review_article), "post" do

      assert_select "input#review_article_topic[name=?]", "review_article[topic]"

      assert_select "textarea#review_article_summary[name=?]", "review_article[summary]"

      assert_select "textarea#review_article_article_link[name=?]", "review_article[article_link]"
    end
  end
end
