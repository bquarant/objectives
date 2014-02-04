json.array!(@responses) do |response|
  json.extract! response, :user_id, :objective_id, :stem_id
  json.url response_url(response, format: :json)
end