json.array!(@test_guide_scenarios) do |test_guide_scenario|
  json.extract! test_guide_scenario, :id, :test_guide_analysis_id, :name, :media
  json.url test_guide_scenario_url(test_guide_scenario, format: :json)
end
