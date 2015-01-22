class AddTenkenkekkasIdToOkunais < ActiveRecord::Migration
  def change
    add_column :okunais, :tenkenkekkas_id, :integer
  end
end
