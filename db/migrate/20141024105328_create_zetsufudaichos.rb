class CreateZetsufudaichos < ActiveRecord::Migration
  def change
    create_table :zetsufudaichos do |t|
      t.string :keiyaku_id
      t.string :scsym
      t.string :sscsym
      t.string :sscsym2
      t.string :sscsym3
      t.string :sscsym4
      t.integer :haisen
      t.string :kiki
      t.string :kaishuym
      t.string :biko

      t.timestamps
    end
  end
end
