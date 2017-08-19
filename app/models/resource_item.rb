class ResourceItem < ApplicationRecord
  belongs_to :lens_shifter
  extend FriendlyId
  friendly_id :title, use: :slugged
  act_as_taggable
end
