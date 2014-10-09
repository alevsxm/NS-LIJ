json.array!(@mini_lectures) do |mini_lecture|
  json.extract! mini_lecture, :id
  json.url mini_lecture_url(mini_lecture, format: :json)
end
