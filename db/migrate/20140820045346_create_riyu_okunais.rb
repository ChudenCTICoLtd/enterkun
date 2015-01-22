class CreateRiyuOkunais < ActiveRecord::Migration
  def change
    create_table :riyu_okunais do |t|
      t.string :atai

      t.timestamps
    end
  end
end
