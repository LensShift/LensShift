class AddFeatureToResourceItem < ActiveRecord::Migration[5.0]
  def change
    add_column :resource_items, :feature, :boolean
  end
end
