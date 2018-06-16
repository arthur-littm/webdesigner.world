class Category < ApplicationRecord
  has_many :resources
  categories = ["inspiration", "colors", "icons", "fonts", "images", "articles"]

  def section_title
    case self.name
    when "inspiration" then "Find inspiration!"
    when "colors" then "Find the right colors!"
    when "icons" then "Find awesome icons!"
    when "fonts" then "Find good fonts!"
    when "images" then "Find beautiful images!"
    when "articles" then "Stay up to date!"
    end
  end
end
