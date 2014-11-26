json.array!(@swimmers) do |swimmer|
  json.extract! swimmer, :id, :name, :age, :dob
  json.url swimmer_url(swimmer, format: :json)
end
