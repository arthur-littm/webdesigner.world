class Resource < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :category
  has_many :common_searches
end
