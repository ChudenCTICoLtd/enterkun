json.array!(@tenkis) do |tenki|
  json.extract! tenki, :id, :atai
  json.url tenki_url(tenki, format: :json)
end
