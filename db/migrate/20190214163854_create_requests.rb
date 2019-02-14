class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
	    t.string :name
  		t.string :email
  		t.string :phone
  		t.string :comments
  		t.string :event_name
  		t.string :event_date
  		t.string :event_location
  		t.string :event_link
  		t.string :event_message
  		t.string :event_type
  		t.string :honoriam
  		t.string :honey

	    t.string :timestamps
    end
  end
end
