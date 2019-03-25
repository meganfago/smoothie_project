class CreateSmoothies < ActiveRecord::Migration[5.2]
  def change
    create_table :smoothies do |t|
      t.string :name
      t.text :ingredients
      t.string :type
      t.integer :likes
      t.string :created_by

      t.timestamps
    end
  end
end
