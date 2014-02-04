json.array!(@question_stems) do |question_stem|
  json.extract! question_stem, :stem
  json.url question_stem_url(question_stem, format: :json)
end