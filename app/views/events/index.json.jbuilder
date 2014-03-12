json.array!(@events) do |event|
  json.extract! event, :id, :title, :url, :postal_code, :type
  json.url event_url(event, format: :json)
end
