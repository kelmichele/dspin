class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
    	t.string :type
      t.string :title
      t.string :date
      t.string :time
      t.string :location
      t.string :description
      t.string :price
      t.string :link
      t.string :image
      t.string :extras
      t.string :honey

      t.string :timestamps
    end
  end
end
