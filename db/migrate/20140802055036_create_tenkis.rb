class CreateTenkis < ActiveRecord::Migration
  def change
    create_table :tenkis do |t|
      t.string :atai

      t.timestamps
    end
  end
end
