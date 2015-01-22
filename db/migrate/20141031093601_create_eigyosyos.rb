class CreateEigyosyos < ActiveRecord::Migration
  def change
    create_table :eigyosyos, id: false do |t|
      t.string :kyoukaicode,null: false
      t.string :kyoukaimei

      t.timestamps
    end
    add_index :eigyosyos, :kyoukaicode, unique: true
  end
end
