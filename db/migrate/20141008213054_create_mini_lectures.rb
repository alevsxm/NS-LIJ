class CreateMiniLectures < ActiveRecord::Migration
  def change
    create_table :mini_lectures do |t|
      t.string :topic
      t.timestamps
    end
  end
end
