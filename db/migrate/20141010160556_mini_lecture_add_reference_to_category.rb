class MiniLectureAddReferenceToCategory < ActiveRecord::Migration
  def change
    change_table :mini_lectures do |t|
      t.references :medical_categories
    end
  end
end
