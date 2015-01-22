class RemoveJisshiflagFromOkunais < ActiveRecord::Migration
  def change
    remove_column :okunais, :jisshi_flag, :boolean
  end
end
