class RemoveColumsFromTenkenkekkas < ActiveRecord::Migration
  def change
    remove_column :tenkenkekkas, :monshin_kekka_id, :integer
    remove_column :tenkenkekkas, :okugai_kekka_id, :integer
    remove_column :tenkenkekkas, :okunai_kekka_id, :integer
    remove_column :tenkenkekkas, :sokuteichi_kekka_id, :integer
  end
end
