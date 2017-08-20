json.extract! resource_item, :id, :title, :author, :source, :source_url, :estimated_reading_time, :short_summary, :tags, :long_summary, :key_takeaways, :optional_analysis, :image, :resource_type, :lens_shifter_id, :created_at, :updated_at
json.url resource_item_url(resource_item, format: :json)
