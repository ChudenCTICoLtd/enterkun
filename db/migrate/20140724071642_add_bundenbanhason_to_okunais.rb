class AddBundenbanhasonToOkunais < ActiveRecord::Migration
  def change
    add_column :okunais, :bundenbanhason_umu, :string
    add_column :okunais, :juudenburosyutsu_umu, :string
  end
end
