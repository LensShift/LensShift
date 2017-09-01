class ResourceItem < ApplicationRecord
  belongs_to :lens_shifter
  extend FriendlyId
  friendly_id :title, use: :slugged
  acts_as_taggable_on :tags

  def self.to_csv
		CSV.generate do |csv|
			csv << column_names
			all.each do |item|
				csv << item.attributes.values_at(*column_names)
			end
		end
	end

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			item = find_by_id(row["id"]) || new
			item.attributes = row.to_hash.slice(*self.column_names)
			# item.title = "#{item.advertiser} #{item.starts.strftime('%d-%m-%Y')}" if item.starts.present?
			item.tag_list = row["tags"]
			item.save!
		end
	end

	def self.import_json(file)
		resource_list = JSON.parse(File.read(file.path))
		resource_list.each do |item|
			ResourceItem.create(item.to_hash)
		end
	end
end
