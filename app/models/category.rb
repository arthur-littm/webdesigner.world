class Category < ApplicationRecord
  has_many :resources, dependent: :destroy
  categories = ["inspiration", "colors", "icons", "fonts", "images", "articles"]

  def section_title
    case self.name
    when "inspiration" then "Find <strong>inspiration</strong>!"
    when "colors" then "Find the right <strong>colors</strong>!"
    when "icons" then "Find awesome <strong>icons</strong>!"
    when "fonts" then "Find good <strong>fonts</strong>!"
    when "images" then "Find beautiful <strong>images</strong>!"
    when "articles" then "Stay up to date!"
    end
  end
end
