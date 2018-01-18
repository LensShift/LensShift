class AddGoogleIdToResourceItems < ActiveRecord::Migration[5.0]
  def change
    add_column :resource_items, :google_doc_id, :integer
  end
end
