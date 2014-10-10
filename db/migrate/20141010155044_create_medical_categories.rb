class CreateMedicalCategories < ActiveRecord::Migration
  def change
    create_table :medical_categories do |t|
      t.string :category_name

      t.timestamps
    end
  end
end
