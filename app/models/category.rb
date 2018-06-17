class Category < ApplicationRecord
  has_many :resources, dependent: :destroy
  categories = ["inspiration", "colors", "icons", "fonts", "images", "articles"]

  def section_title
    case self.name
    when "inspiration" then "Step 1 - find <strong>inspiration</strong>!"
    when "colors" then "Step 2 - pick the right <strong>colors</strong>!"
    when "icons" then "Step 3 - add some awesome <strong>icons</strong>!"
    when "fonts" then "Step 4 - pick good <strong>fonts</strong>!"
    when "images" then "Step 5 - find beautiful <strong>images</strong>!"
    when "articles" then "Finally, stay up to date!"
    when "rules" then "Follow the design <strong>rules</strong> of thumb"
    else
      self.name
    end
  end
end
