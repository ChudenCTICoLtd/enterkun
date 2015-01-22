class AddKyoukaiCodeToChosains < ActiveRecord::Migration
  def change
    add_column :chosains, :kyoukaicode, :string
  end
end
