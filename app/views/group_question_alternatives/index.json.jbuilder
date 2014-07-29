json.array!(@group_question_alternatives) do |group_question_alternative|
  json.extract! group_question_alternative, :id, :name, :correct, :group_question_statement_id
  json.url group_question_alternative_url(group_question_alternative, format: :json)
end
