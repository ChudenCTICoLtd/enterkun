class CreateMonshins < ActiveRecord::Migration
  def change
    create_table :monshins do |t|
      t.boolean :jisshi_flag
      t.string :mijisshi_riyu
      t.string :mononifurebiribiri_umumi
      t.string :zoukaichiku_umumi

      t.timestamps
    end
  end
end
