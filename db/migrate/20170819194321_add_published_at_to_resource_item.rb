class AddPublishedAtToResourceItem < ActiveRecord::Migration[5.0]
  def change
    add_column :resource_items, :published_at, :datetime
    add_column :resource_items, :other_notes, :text
  end
end
