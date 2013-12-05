json.array!(@cloths) do |cloth|
  json.extract! cloth, :text, :title, :autor
  json.url cloth_url(cloth, format: :json)
end
