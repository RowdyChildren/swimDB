json.array!(@stimes) do |stime|
  json.extract! stime, :id, :time, :meet_id, :swimmer_id, :stroke_id
  json.url stime_url(stime, format: :json)
end
