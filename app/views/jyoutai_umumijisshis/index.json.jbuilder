json.array!(@jyoutai_umumijisshis) do |jyoutai_umumijisshi|
  json.extract! jyoutai_umumijisshi, :id, :atai
  json.url jyoutai_umumijisshi_url(jyoutai_umumijisshi, format: :json)
end
