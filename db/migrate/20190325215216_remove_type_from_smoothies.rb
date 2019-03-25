class RemoveTypeFromSmoothies < ActiveRecord::Migration[5.2]
  def change
    remove_column :smoothies, :type, :string
  end
end
