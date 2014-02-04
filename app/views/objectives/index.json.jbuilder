json.array!(@objectives) do |objective|
  json.extract! objective, :objective, :stem_id, :exam_id, :strength_id
  json.url objective_url(objective, format: :json)
end