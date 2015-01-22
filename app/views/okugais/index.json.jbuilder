json.array!(@okugais) do |okugai|
  json.extract! okugai, :id, :toritsukezetsuen_ryohifuno, :tabutsurikaku_ryohifuno
  json.url okugai_url(okugai, format: :json)
end
