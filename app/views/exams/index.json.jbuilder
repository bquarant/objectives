json.array!(@exams) do |exam|
  json.extract! exam, :content, :examday, :objective_id, :stem_id
  json.url exam_url(exam, format: :json)
end