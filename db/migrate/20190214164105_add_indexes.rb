class AddIndexes < ActiveRecord::Migration[5.2]
  def change
  	add_index :requests, :name
    add_index :requests, :event_name
    
    add_index :events, :type
    add_index :events, :title
    add_index :events, :date
  end
end
