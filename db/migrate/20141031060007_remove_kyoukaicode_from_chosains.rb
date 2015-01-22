class RemoveKyoukaicodeFromChosains < ActiveRecord::Migration
  def change
    remove_column :chosains, :Kyoukaicode, :string
  end
end
