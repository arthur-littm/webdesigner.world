class AddPhotoToResources < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :photo, :string
  end
end
