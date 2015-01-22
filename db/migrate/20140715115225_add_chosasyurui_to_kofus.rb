class AddChosasyuruiToKofus < ActiveRecord::Migration
  def change
    add_column :kofus, :chosasyurui_code, :string
    add_column :kofus, :shugo_code, :string
  end
end
