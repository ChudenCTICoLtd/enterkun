class CreateZaitakus < ActiveRecord::Migration
  def change
    create_table :zaitakus do |t|
      t.string :atai

      t.timestamps
    end
  end
end
