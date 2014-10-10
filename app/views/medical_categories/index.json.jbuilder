json.array!(@medical_categories) do |medical_category|
  json.extract! medical_category, :id, :category_name
  json.url medical_category_url(medical_category, format: :json)
end
