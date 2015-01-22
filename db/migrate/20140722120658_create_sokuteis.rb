class CreateSokuteis < ActiveRecord::Migration
  def change
    create_table :sokuteis do |t|
      t.integer :kairo_su
      t.float :roueidenryu_ikkatsu
      t.float :zetsuenteikou_ikkatsu

      t.timestamps
    end
  end
end
