require 'rails_helper'

RSpec.describe "review_articles/index", :type => :view do
  before(:each) do
    assign(:review_articles, [
      ReviewArticle.create!(
        :topic => "Topic",
        :summary => "MyText",
        :article_link => "MyText"
      ),
      ReviewArticle.create!(
        :topic => "Topic",
        :summary => "MyText",
        :article_link => "MyText"
      )
    ])
  end

  it "renders a list of review_articles" do
    render
    assert_select "tr>td", :text => "Topic".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
