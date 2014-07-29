json.array!(@simple_question_alternatives) do |simple_question_alternative|
  json.extract! simple_question_alternative, :id, :name, :media, :correct, :simple_question_id
  json.url simple_question_alternative_url(simple_question_alternative, format: :json)
end
