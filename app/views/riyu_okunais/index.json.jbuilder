json.array!(@riyu_okunais) do |riyu_okunai|
  json.extract! riyu_okunai, :id, :atai
  json.url riyu_okunai_url(riyu_okunai, format: :json)
end
