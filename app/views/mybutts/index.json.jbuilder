json.array!(@mybutts) do |mybutt|
  json.extract! mybutt, :id, :name, :cturl
  json.url mybutt_url(mybutt, format: :json)
end
