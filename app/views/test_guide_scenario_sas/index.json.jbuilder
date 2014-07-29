json.array!(@test_guide_scenario_sas) do |test_guide_scenario_sa|
  json.extract! test_guide_scenario_sa, :id, :test_guide_scenario_id, :statement, :simple_question_id, :group_question_id
  json.url test_guide_scenario_sa_url(test_guide_scenario_sa, format: :json)
end
