class AddFieldsToRequest < ActiveRecord::Migration[5.2]
  def change
  	add_column :requests, :org_name, :string
  	add_column :requests, :event_time, :string
  	add_column :requests, :audience, :string
  	add_column :requests, :aud_size, :string
  end
end
