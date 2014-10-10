require 'rails_helper'

RSpec.describe "medical_categories/new", :type => :view do
  before(:each) do
    assign(:medical_category, MedicalCategory.new(
      :category_name => "MyString"
    ))
  end

  it "renders new medical_category form" do
    render

    assert_select "form[action=?][method=?]", medical_categories_path, "post" do

      assert_select "input#medical_category_category_name[name=?]", "medical_category[category_name]"
    end
  end
end
