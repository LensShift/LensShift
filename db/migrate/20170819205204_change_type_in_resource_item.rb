class ChangeTypeInResourceItem < ActiveRecord::Migration[5.0]
  def change
  	rename_column :resource_items, :type, :resource_type
  end
end
