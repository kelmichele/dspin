class AddAnotherArticleSortField < ActiveRecord::Migration[5.2]
  def change
  	add_column :articles, :display, :boolean
		add_column :articles, :link, :string
  end
end
