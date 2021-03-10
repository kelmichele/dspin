class DropPresses < ActiveRecord::Migration[5.2]
  def change
  	drop_table :presses
  end
end
