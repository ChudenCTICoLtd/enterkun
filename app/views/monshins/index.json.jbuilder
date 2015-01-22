json.array!(@monshins) do |monshin|
  json.extract! monshin, :id, :jisshi_flag, :mijisshi_riyu, :mononifurebiribiri_umumi, :zoukaichiku_umumi
  json.url monshin_url(monshin, format: :json)
end
