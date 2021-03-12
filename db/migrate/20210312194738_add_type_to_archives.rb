class AddTypeToArchives < ActiveRecord::Migration[5.2]
  def change
  	add_column :archives, :category, :string
  end
end
