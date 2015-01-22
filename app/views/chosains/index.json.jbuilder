json.array!(@chosains) do |chosain|
  json.extract! chosain, :id, :namecode, :name
  json.url chosain_url(chosain, format: :json)
end
