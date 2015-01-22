class CreateChosains < ActiveRecord::Migration
  def change
    create_table :chosains do |t|
      t.string :namecode
      t.string :name

      t.timestamps
    end
  end
end
