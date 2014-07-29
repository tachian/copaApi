json.array!(@test_guide_scenario_aps) do |test_guide_scenario_ap|
  json.extract! test_guide_scenario_ap, :id, :test_guide_scenario_id, :statement, :simple_question_id, :group_question_id
  json.url test_guide_scenario_ap_url(test_guide_scenario_ap, format: :json)
end
