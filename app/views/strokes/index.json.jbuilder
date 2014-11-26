json.array!(@strokes) do |stroke|
  json.extract! stroke, :id, :name
  json.url stroke_url(stroke, format: :json)
end
