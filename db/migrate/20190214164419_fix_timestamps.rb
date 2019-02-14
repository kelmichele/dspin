class FixTimestamps < ActiveRecord::Migration[5.2]
  def change
  	remove_column :requests, :timestamps, :string
  	remove_column :events, :timestamps, :string
  	
  	add_timestamps :requests, null: true
  	add_timestamps :events, null: true
  end
end
