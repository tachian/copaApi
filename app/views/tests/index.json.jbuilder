json.array!(@tests) do |test|
  json.extract! test, :id, :name, :company_id, :duration
  json.url test_url(test, format: :json)
end
