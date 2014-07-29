json.array!(@group_questions) do |group_question|
  json.extract! group_question, :id, :name
  json.url group_question_url(group_question, format: :json)
end
