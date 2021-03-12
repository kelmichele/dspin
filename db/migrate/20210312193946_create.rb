class Create < ActiveRecord::Migration[5.2]
  def change
    create_table :archives do |t|
  		t.text :title
  		t.text :details
  	  t.string :link
  	  t.string :image
  	  t.string :video
  	  t.integer :order
  	
  	  t.string :timestamps
    end

    add_index :archives, :id
    add_index :archives, :title
  end
end