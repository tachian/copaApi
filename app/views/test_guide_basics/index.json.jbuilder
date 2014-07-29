json.array!(@test_guide_basics) do |test_guide_basic|
  json.extract! test_guide_basic, :id, :test_id, :test_type_id, :order, :name, :message, :simple_question_id, :group_question_id
  json.url test_guide_basic_url(test_guide_basic, format: :json)
end
