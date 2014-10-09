json.array!(@pico_questions) do |pico_question|
  json.extract! pico_question, :id, :question, :summary
  json.url pico_question_url(pico_question, format: :json)
end
