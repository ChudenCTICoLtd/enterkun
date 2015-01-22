json.array!(@eigyosyos) do |eigyosyo|
  json.extract! eigyosyo, :id, :kyoukaicode, :kyoukaimei
  json.url eigyosyo_url(eigyosyo, format: :json)
end
