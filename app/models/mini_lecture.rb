class MiniLecture < ActiveRecord::Base

  belongs_to :medical_category

  has_attached_file :document
  validates_attachment :document,
  content_type: { :content_type => [
    'image/jpg','image/jpeg','image/pjpeg','image/png','image/x-png','image/gif',
    'application/pdf',
    'application/msword','applicationvnd.ms-word','application/vnd.openxmlformats-officedocument.wordprocessingml.document',
    'application/msexcel','application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
    'application/mspowerpoint','application/vnd.ms-powerpoint','application/vnd.openxmlformats-officedocument.presentationml.presentation',
    'text/plain']}

  validates :topic, presence: true
  validates_attachment_presence :document


  # Solr Configuration

  # searchable do
  #   text :topic
  # end

end
