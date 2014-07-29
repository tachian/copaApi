json.array!(@group_question_statements) do |group_question_statement|
  json.extract! group_question_statement, :id, :name, :group_question_id
  json.url group_question_statement_url(group_question_statement, format: :json)
end
