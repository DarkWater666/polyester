json.array!(@vendors) do |vendor|
  json.extract! vendor, :text
  json.url vendor_url(vendor, format: :json)
end
