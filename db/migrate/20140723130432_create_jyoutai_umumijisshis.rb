class CreateJyoutaiUmumijisshis < ActiveRecord::Migration
  def change
    create_table :jyoutai_umumijisshis do |t|
      t.string :atai

      t.timestamps
    end
  end
end
