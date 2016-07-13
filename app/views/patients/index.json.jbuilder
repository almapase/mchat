json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :rut, :dv, :age, :sex
  json.url patient_url(patient, format: :json)
end
