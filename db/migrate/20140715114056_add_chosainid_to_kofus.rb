class AddChosainidToKofus < ActiveRecord::Migration
  def change
    add_column :kofus, :chosain_id, :integer
    add_column :kofus, :keiyaku_id, :integer
  end
end
