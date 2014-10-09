class CreatePicoQuestions < ActiveRecord::Migration
  def change
    create_table :pico_questions do |t|
      t.text :question
      t.text :summary
      t.text :article_link

      t.timestamps
    end
  end
end
