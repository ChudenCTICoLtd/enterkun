class CreateKeiyakus < ActiveRecord::Migration
  def change
    create_table :keiyakus do |t|
      t.string :okyaku_code
      t.string :chosa_kubn
      t.string :kanriku_code
      t.string :hashira_bango
      t.string :okyaku_name
      t.string :keiyakushubetsu_code
      t.string :torikigai_code

      t.timestamps
    end
  end
end
