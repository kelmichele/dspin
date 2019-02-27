class RenameType < ActiveRecord::Migration[5.2]
  def change
    rename_column :features, :type, :feat_type
  end
end
