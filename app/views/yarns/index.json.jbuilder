json.array!(@yarns) do |yarn|
  json.extract! yarn, :text, :title, :autor
  json.url yarn_url(yarn, format: :json)
end
