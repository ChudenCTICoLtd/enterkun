class CreateRiyuMonshins < ActiveRecord::Migration
  def change
    create_table :riyu_monshins do |t|
      t.string :atai

      t.timestamps
    end
  end
end
