class AddColsToHoumons < ActiveRecord::Migration
  def change
    add_column :houmons, :lat, :decimal,precision:11,scale:8
    add_column :houmons, :lng, :decimal,precision:11,scale:8
  end
end
