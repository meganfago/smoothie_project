class AddImageToSmoothies < ActiveRecord::Migration[5.2]
  def change
    add_column :smoothies, :image, :string
  end
end
