json.array!(@zaitakus) do |zaitaku|
  json.extract! zaitaku, :id, :atai
  json.url zaitaku_url(zaitaku, format: :json)
end
