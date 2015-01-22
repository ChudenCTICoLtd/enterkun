class RemoveTenkenkekkaidFromOkunais < ActiveRecord::Migration
  def change
    remove_column :okunais, :tenkenkekkas_id, :integer
  end
end
