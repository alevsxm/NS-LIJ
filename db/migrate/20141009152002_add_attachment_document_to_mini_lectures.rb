class AddAttachmentDocumentToMiniLectures < ActiveRecord::Migration
  def self.up
    change_table :mini_lectures do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :mini_lectures, :document
  end
end
