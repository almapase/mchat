json.array!(@answer_groups) do |answer_group|
  json.extract! answer_group, :id, :option, :mchat_test_id, :answer_id
  json.url answer_group_url(answer_group, format: :json)
end
