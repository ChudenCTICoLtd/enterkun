class RemoveBundenbanhasonFromOkunais < ActiveRecord::Migration
  def change
    remove_column :okunais, :bundenbanhason_umu, :boolean
    remove_column :okunais, :juudenburosyutsu_umu, :boolean
  end
end
