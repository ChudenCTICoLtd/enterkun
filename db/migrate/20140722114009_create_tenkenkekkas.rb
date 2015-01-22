class CreateTenkenkekkas < ActiveRecord::Migration
  def change
    create_table :tenkenkekkas do |t|
      t.string :chosakekka_code
      t.string :chosajisseki_code
      t.integer :houmon_id
      t.integer :monshin_kekka_id
      t.integer :okugai_kekka_id
      t.integer :okunai_kekka_id
      t.integer :sokuteichi_kekka_id

      t.timestamps
    end
  end
end
