class MedicalCategory < ActiveRecord::Base

  has_many :mini_lectures, dependent: :destroy
  has_many :pico_questions, dependent: :destroy

  validates :category_name, presence: true
  validates :category_name, uniqueness: true

  def has_dependencies?
    has_dependencies = false
    if self.pico_questions.count > 0 || self.mini_lectures.count > 0
      has_dependencies = true
    end
    has_dependencies
  end

end
