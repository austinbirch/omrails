json.array!(@objections) do |objection|
  json.extract! objection, :id, :title, :objection, :rebuttal, :tag
  json.url objection_url(objection, format: :json)
end
