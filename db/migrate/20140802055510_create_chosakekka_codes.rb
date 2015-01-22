class CreateChosakekkaCodes < ActiveRecord::Migration
  def change
    create_table :chosakekka_codes do |t|
      t.string :atai

      t.timestamps
    end
  end
end
