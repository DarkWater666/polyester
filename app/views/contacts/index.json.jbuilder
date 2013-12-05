json.array!(@contacts) do |contact|
  json.extract! contact, :text
  json.url contact_url(contact, format: :json)
end
