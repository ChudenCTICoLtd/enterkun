class AddKyoukaicodeToChosains < ActiveRecord::Migration
  def change
    add_column :chosains, :Kyoukaicode, :string
  end
end
