class AddClearfixToArchives < ActiveRecord::Migration[5.2]
  def change
  	add_column :archives, :clearfix, :boolean
  end
end
