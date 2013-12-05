json.array!(@news) do |news|
  json.extract! news, :autor, :text
  json.url news_url(news, format: :json)
end
