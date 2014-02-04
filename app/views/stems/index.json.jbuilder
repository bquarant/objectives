json.array!(@stems) do |stem|
  json.extract! stem, :content, :exam_id
  json.url stem_url(stem, format: :json)
end