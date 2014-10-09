require 'rails_helper'

RSpec.describe "pico_questions/index", :type => :view do
  before(:each) do
    assign(:pico_questions, [
      PicoQuestion.create!(
        :question => "MyText",
        :summary => "MyText"
      ),
      PicoQuestion.create!(
        :question => "MyText",
        :summary => "MyText"
      )
    ])
  end

  it "renders a list of pico_questions" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
