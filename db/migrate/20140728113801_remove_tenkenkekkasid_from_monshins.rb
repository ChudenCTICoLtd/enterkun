class RemoveTenkenkekkasidFromMonshins < ActiveRecord::Migration
  def change
    remove_column :monshins, :tenkenkekkas_id, :integer
  end
end
