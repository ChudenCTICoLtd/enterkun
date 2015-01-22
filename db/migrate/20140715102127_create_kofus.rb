class CreateKofus < ActiveRecord::Migration
  def change
    create_table :kofus do |t|
      t.string :okyaku_code
      t.string :chosa_kubn
      t.string :kanriku_code
      t.string :hashira_bango
      t.string :okyaku_name
      t.string :keiyakushubetsu_code
      t.string :torikigai_code
      t.string :namecode
      t.string :shugo_code
      t.string :kofushubetsu_code

      t.timestamps
    end
  end
end
