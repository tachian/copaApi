json.array!(@test_types) do |test_type|
  json.extract! test_type, :id, :name
  json.url test_type_url(test_type, format: :json)
end
