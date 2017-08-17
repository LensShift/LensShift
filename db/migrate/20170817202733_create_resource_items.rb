class CreateResourceItems < ActiveRecord::Migration[5.0]
  def change
    create_table :resource_items do |t|
      t.string :title
      t.string :author
      t.string :source
      t.string :source_url
      t.integer :estimated_reading_time
      t.text :short_summary
      t.string :tags
      t.text :long_summary
      t.text :key_takeaways
      t.text :optional_analysis
      t.string :image
      t.string :type
      t.string :slug
      t.references :lens_shifter, foreign_key: true

      t.timestamps
    end
  end
end
