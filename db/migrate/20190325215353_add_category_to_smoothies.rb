class AddCategoryToSmoothies < ActiveRecord::Migration[5.2]
  def change
    add_column :smoothies, :category, :string
  end
end
