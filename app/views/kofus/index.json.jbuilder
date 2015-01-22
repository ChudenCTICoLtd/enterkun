json.array!(@kofus) do |kofu|
  json.extract! kofu, :id, :okyaku_code, :chosa_kubn, :kanriku_code, :hashira_bango, :okyaku_name, :keiyakushubetsu_code, :torikigai_code, :namecode, :shugo_code, :kofushubetsu_code
  json.url kofu_url(kofu, format: :json)
end
