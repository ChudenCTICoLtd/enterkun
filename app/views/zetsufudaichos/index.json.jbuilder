json.array!(@zetsufudaichos) do |zetsufudaicho|
  json.extract! zetsufudaicho, :id, :keiyaku_id, :scsym, :sscsym, :sscsym2, :sscsym3, :sscsym4, :haisen, :kiki, :kaishuym, :biko
  json.url zetsufudaicho_url(zetsufudaicho, format: :json)
end
