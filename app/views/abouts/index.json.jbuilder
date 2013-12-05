json.array!(@abouts) do |about|
  json.extract! about, :text
  json.url about_url(about, format: :json)
end
