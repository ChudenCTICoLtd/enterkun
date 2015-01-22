class CreateJyoutaiUmufukanous < ActiveRecord::Migration
  def change
    create_table :jyoutai_umufukanous do |t|
      t.string :atai

      t.timestamps
    end
  end
end
