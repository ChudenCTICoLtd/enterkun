json.array!(@okunais) do |okunai|
  json.extract! okunai, :id, :jisshi_flag, :mijisshi_riyu, :bundenbanhason_umu, :juudenburosyutsu_umu
  json.url okunai_url(okunai, format: :json)
end
