class AddTenkenkekkaidToOkunais < ActiveRecord::Migration
  def change
    add_column :okunais, :tenkenkekka_id, :integer
  end
end
