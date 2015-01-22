class RemoveTenkenkekkaidFromOkugais < ActiveRecord::Migration
  def change
    remove_column :okugais, :tenkenkekkas_id, :integer
  end
end
