json.array!(@type_tests) do |type_test|
  json.extract! type_test, :id, :name, :instruction
  json.url type_test_url(type_test, format: :json)
end
