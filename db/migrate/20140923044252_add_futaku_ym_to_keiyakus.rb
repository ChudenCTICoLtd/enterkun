class AddFutakuYmToKeiyakus < ActiveRecord::Migration
  def change
    add_column :keiyakus, :futaku_ym, :string
  end
end
