json.array!(@mebels) do |mebel|
  json.extract! mebel, :text, :title, :autor
  json.url mebel_url(mebel, format: :json)
end
