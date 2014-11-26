json.array!(@meets) do |meet|
  json.extract! meet, :id, :name, :location
  json.url meet_url(meet, format: :json)
end
