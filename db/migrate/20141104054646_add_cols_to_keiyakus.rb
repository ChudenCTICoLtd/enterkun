class AddColsToKeiyakus < ActiveRecord::Migration
  def change
    add_column :keiyakus, :shugo_code, :string
    add_column :keiyakus, :kyoukaicode, :string
  end
end
