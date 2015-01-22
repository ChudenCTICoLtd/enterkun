class RemoveTenkenkekkaidFromSokuteis < ActiveRecord::Migration
  def change
    remove_column :sokuteis, :tenkenkekkas_id, :integer
  end
end
