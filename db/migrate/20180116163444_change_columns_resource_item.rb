class ChangeColumnsResourceItem < ActiveRecord::Migration[5.0]
  def change
  	remove_column :resource_items, :long_summary
  	remove_column :resource_items, :optional_analysis
  	remove_column :resource_items, :other_notes
  	add_column :resource_items, :analysis_content, :text
  end
end
