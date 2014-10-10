require 'rails_helper'

RSpec.describe "medical_categories/index", :type => :view do
  before(:each) do
    assign(:medical_categories, [
      MedicalCategory.create!(
        :category_name => "Category Name"
      ),
      MedicalCategory.create!(
        :category_name => "Category Name"
      )
    ])
  end

  it "renders a list of medical_categories" do
    render
    assert_select "tr>td", :text => "Category Name".to_s, :count => 2
  end
end
