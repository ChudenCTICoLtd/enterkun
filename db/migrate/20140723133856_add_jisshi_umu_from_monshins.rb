class AddJisshiUmuFromMonshins < ActiveRecord::Migration
  def change
    add_column :monshins, :jisshi_umu, :string
  end
end
