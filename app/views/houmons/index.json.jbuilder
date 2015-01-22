json.array!(@houmons) do |houmon|
  json.extract! houmon, :id, :houmon_ymd, :houmon_su, :tenki, :zaitaku_jotai, :kofu_id
  json.url houmon_url(houmon, format: :json)
end
