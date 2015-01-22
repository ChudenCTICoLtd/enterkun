json.array!(@jyoutai_umus) do |jyoutai_umu|
  json.extract! jyoutai_umu, :id, :atai
  json.url jyoutai_umu_url(jyoutai_umu, format: :json)
end
