json.array!(@simple_questions) do |simple_question|
  json.extract! simple_question, :id, :name, :media
  json.url simple_question_url(simple_question, format: :json)
end
