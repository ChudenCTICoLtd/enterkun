class CreateChosajissekiCodes < ActiveRecord::Migration
  def change
    create_table :chosajisseki_codes do |t|
      t.string :atai

      t.timestamps
    end
  end
end
