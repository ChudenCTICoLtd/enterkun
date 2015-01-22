class AddTenkenkekkaidToSokuteis < ActiveRecord::Migration
  def change
    add_column :sokuteis, :tenkenkekka_id, :integer
  end
end
