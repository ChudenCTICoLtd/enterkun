class AddTenkenkekkasidToMonshins < ActiveRecord::Migration
  def change
    add_column :monshins, :tenkenkekka_id, :integer
  end
end
