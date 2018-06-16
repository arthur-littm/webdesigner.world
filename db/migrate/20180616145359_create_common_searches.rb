class CreateCommonSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :common_searches do |t|
      t.string :text
      t.references :resource, foreign_key: true

      t.timestamps
    end
  end
end
