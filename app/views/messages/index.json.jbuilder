json.array!(@messages) do |message|
  json.extract! message, :id, :shortmessage, :longmessage, :starttime, :endtime
  json.url message_url(message, format: :json)
end
