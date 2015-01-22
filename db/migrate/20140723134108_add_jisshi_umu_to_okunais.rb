class AddJisshiUmuToOkunais < ActiveRecord::Migration
  def change
    add_column :okunais, :jisshi_umu, :string
  end
end
