class AddTenkenkekkaidToOkugais < ActiveRecord::Migration
  def change
    add_column :okugais, :tenkenkekka_id, :integer
  end
end
