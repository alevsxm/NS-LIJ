require 'rails_helper'

RSpec.describe "review_articles/show", :type => :view do
  before(:each) do
    @review_article = assign(:review_article, ReviewArticle.create!(
      :topic => "Topic",
      :summary => "MyText",
      :article_link => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Topic/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
