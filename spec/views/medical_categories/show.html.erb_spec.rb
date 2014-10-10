require 'rails_helper'

RSpec.describe "medical_categories/show", :type => :view do
  before(:each) do
    @medical_category = assign(:medical_category, MedicalCategory.create!(
      :category_name => "Category Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Category Name/)
  end
end
