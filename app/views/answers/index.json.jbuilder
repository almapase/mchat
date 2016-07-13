json.array!(@answers) do |answer|
  json.extract! answer, :id, :date, :user_id, :patient_id
  json.url answer_url(answer, format: :json)
end
