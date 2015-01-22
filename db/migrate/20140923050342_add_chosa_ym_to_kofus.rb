class AddChosaYmToKofus < ActiveRecord::Migration
  def change
    add_column :kofus, :chosa_ym, :string
  end
end
