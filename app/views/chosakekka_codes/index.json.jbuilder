json.array!(@chosakekka_codes) do |chosakekka_code|
  json.extract! chosakekka_code, :id, :atai
  json.url chosakekka_code_url(chosakekka_code, format: :json)
end
