json.array!(@riyu_monshins) do |riyu_monshin|
  json.extract! riyu_monshin, :id, :atai
  json.url riyu_monshin_url(riyu_monshin, format: :json)
end
