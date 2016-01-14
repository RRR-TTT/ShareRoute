json.array!(@explanations) do |explanation|
  json.extract! explanation, :id, :ExplanationContent, :UpdatedUser_id, :LastUpdate
  json.url explanation_url(explanation, format: :json)
end
