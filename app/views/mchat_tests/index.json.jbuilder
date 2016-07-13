json.array!(@mchat_tests) do |mchat_test|
  json.extract! mchat_test, :id, :order, :question
  json.url mchat_test_url(mchat_test, format: :json)
end
