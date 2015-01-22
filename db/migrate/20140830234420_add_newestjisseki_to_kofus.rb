class AddNewestjissekiToKofus < ActiveRecord::Migration
  def change
    add_column :kofus, :newest_chosajisseki_code, :string
  end
end
