json.array!(@jyoutai_umufukanous) do |jyoutai_umufukanou|
  json.extract! jyoutai_umufukanou, :id, :atai
  json.url jyoutai_umufukanou_url(jyoutai_umufukanou, format: :json)
end
