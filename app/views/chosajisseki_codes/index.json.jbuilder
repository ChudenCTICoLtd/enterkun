json.array!(@chosajisseki_codes) do |chosajisseki_code|
  json.extract! chosajisseki_code, :id, :atai
  json.url chosajisseki_code_url(chosajisseki_code, format: :json)
end
