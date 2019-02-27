class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
    	t.string :name
  		t.string :email
  		t.string :phone
    	t.string :organization
    	t.string :link
    	t.string :deadline
    	t.string :type
    	t.string :details
  		t.string :honey

	    t.string :timestamps
    end
  end
end