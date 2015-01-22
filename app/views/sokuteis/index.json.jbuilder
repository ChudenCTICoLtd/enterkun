json.array!(@sokuteis) do |sokutei|
  json.extract! sokutei, :id, :kairo_su, :roueidenryu_ikkatsu, :zetsuenteikou_ikkatsu
  json.url sokutei_url(sokutei, format: :json)
end
