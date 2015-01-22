class CreateJyoutaiUmus < ActiveRecord::Migration
  def change
    create_table :jyoutai_umus do |t|
      t.string :atai

      t.timestamps
    end
  end
end
