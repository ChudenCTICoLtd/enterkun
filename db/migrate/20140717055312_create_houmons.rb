class CreateHoumons < ActiveRecord::Migration
  def change
    create_table :houmons do |t|
      t.datetime :houmon_ymd
      t.string :houmon_su
      t.string :tenki
      t.string :zaitaku_jotai
      t.string :kofu_id

      t.timestamps
    end
  end
end
