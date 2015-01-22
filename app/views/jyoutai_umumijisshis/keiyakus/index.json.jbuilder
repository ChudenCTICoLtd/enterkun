json.array!(@keiyakus) do |keiyaku|
  json.extract! keiyaku, :id, :okyaku_code, :chosa_kubn, :kanriku_code, :hashira_bango, :okyaku_name, :keiyakushubetsu_code, :torikigai_code
  json.url keiyaku_url(keiyaku, format: :json)
end
