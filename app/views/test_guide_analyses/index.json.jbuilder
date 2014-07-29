json.array!(@test_guide_analyses) do |test_guide_analysis|
  json.extract! test_guide_analysis, :id, :test_id, :name, :media, :statement, :order
  json.url test_guide_analysis_url(test_guide_analysis, format: :json)
end
