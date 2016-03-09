json.array!(@messages) do |message|
  json.extract! message, :id, :author, :content
  json.url message_url(message, format: :json)
end
