class AddTenkenkekkasIdToSokuteis < ActiveRecord::Migration
  def change
    add_column :sokuteis, :tenkenkekkas_id, :integer
  end
end
