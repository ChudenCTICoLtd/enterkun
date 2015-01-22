class AddKigouToChosajissekiCodes < ActiveRecord::Migration
  def change
    add_column :chosajisseki_codes, :kigou, :string
  end
end
