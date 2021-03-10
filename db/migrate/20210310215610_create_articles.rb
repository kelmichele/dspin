class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
  		t.string :publication
  		t.string :title
  		t.text :details
  	  t.string :link1
  	  t.string :link2
  	  t.string :image
  	  t.string :alt
  	
  	  t.string :timestamps
    end

    add_index :articles, :id
    add_index :articles, :title
  end
end