json.array!(@tenkenkekkas) do |tenkenkekka|
  json.extract! tenkenkekka, :id, :chosakekka_code, :chosajisseki_code, :houmon_id, :monshin_kekka_id, :okugai_kekka_id, :okunai_kekka_id, :sokuteichi_kekka_id
  json.url tenkenkekka_url(tenkenkekka, format: :json)
end
