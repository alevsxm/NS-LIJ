class PicoQuestion < ActiveRecord::Base

  belongs_to :medical_category

  searchable do
    text :question, :summary
  end

end
