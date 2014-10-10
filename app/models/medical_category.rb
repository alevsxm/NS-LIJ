class MedicalCategory < ActiveRecord::Base

  has_many :mini_lectures, dependent: :destroy
  has_many :pico_questions, dependent: :destroy

  validates :category_name, presence: true
  validates :category_name, uniquenesss: true
  
end
