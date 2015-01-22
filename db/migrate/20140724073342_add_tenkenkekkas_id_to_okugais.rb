class AddTenkenkekkasIdToOkugais < ActiveRecord::Migration
  def change
    add_column :okugais, :tenkenkekkas_id, :integer
  end
end
