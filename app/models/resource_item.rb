class ResourceItem < ApplicationRecord
  belongs_to :lens_shifter
  extend FriendlyId
  friendly_id :title, use: :slugged

end
