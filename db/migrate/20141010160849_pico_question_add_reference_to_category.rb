class PicoQuestionAddReferenceToCategory < ActiveRecord::Migration
  def change
    change_table :pico_questions do |t|
      t.references :medical_category
    end
  end
end
