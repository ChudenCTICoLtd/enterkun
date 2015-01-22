class CreateOkugais < ActiveRecord::Migration
  def change
    create_table :okugais do |t|
      t.string :toritsukezetsuen_ryohifuno
      t.string :tabutsurikaku_ryohifuno

      t.timestamps
    end
  end
end
