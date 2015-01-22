class RemoveOkyakuCodeFromKofus < ActiveRecord::Migration
  def change
    remove_column :kofus, :okyaku_code, :string
    remove_column :kofus, :chosa_kubn, :string
    remove_column :kofus, :kanriku_code, :string
    remove_column :kofus, :hashira_bango, :string
    remove_column :kofus, :okyaku_name, :string
    remove_column :kofus, :keiyakushubetsu_code, :string
    remove_column :kofus, :namecode, :string
    remove_column :kofus, :shugo_code, :string
  end
end
