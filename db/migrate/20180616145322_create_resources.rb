class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :url
      t.string :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
