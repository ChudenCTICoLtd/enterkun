class AddTenkenkekkasIdToMonshins < ActiveRecord::Migration
  def change
    add_column :monshins, :tenkenkekkas_id, :integer
  end
end
