class Category < ApplicationRecord
  has_many :resources, dependent: :destroy
  categories = ["inspiration", "colors", "icons", "fonts", "images", "articles"]

  def section_title
    case self.name
    when "rules" then "Follow the design <strong>rules</strong> of thumb"
    when "inspiration" then "Step 1 - find <strong>inspiration</strong>!"
    when "colors" then "Step 2 - pick the right <strong>colors</strong>!"
    when "fonts" then "Step 3 - pick good <strong>fonts</strong>!"
    when "icons" then "Step 4 - add some awesome <strong>icons</strong>!"
    when "images" then "Step 5 - find beautiful <strong>images</strong>!"
    when "news" then "Finally, stay up-to-date on design trends!"
    else
      self.name
    end
  end
end
