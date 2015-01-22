class RemoveJisshiflagFromMonshins < ActiveRecord::Migration
  def change
    remove_column :monshins, :jisshi_flag, :boolean
  end
end
