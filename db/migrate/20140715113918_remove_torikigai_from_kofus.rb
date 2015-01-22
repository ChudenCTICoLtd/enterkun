class RemoveTorikigaiFromKofus < ActiveRecord::Migration
  def change
    remove_column :kofus, :torikigai_code, :string
  end
end
