class Resource < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :category
  has_many :common_searches

  def list_common_searches
    if common_searches.count > 1
      arr = common_searches[0..-2].map {|s| "<code>#{s.text}</code>"}
      searches = arr.join(", ")
      searches << ", <code>#{common_searches.last.text}</code>."
      return searches
    else
      return "<code>#{common_searches.first.text}</code>."
    end
  end
end
