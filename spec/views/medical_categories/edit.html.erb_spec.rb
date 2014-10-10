require 'rails_helper'

RSpec.describe "medical_categories/edit", :type => :view do
  before(:each) do
    @medical_category = assign(:medical_category, MedicalCategory.create!(
      :category_name => "MyString"
    ))
  end

  it "renders the edit medical_category form" do
    render

    assert_select "form[action=?][method=?]", medical_category_path(@medical_category), "post" do

      assert_select "input#medical_category_category_name[name=?]", "medical_category[category_name]"
    end
  end
end
