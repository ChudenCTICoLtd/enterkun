class CreateOkunais < ActiveRecord::Migration
  def change
    create_table :okunais do |t|
      t.boolean :jisshi_flag
      t.string :mijisshi_riyu
      t.boolean :bundenbanhason_umu
      t.boolean :juudenburosyutsu_umu

      t.timestamps
    end
  end
end
