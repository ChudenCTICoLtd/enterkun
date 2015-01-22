class AddPictureToHoumons < ActiveRecord::Migration
  def change
    add_column :houmons, :picture, :string
  end
end
