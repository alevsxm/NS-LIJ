class PicoQuestion < ActiveRecord::Base

  belongs_to :medical_category

  # Solr Configuration

  # searchable do
  #   text :question, :summary
  # end

end
