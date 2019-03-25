class FixColumn < ActiveRecord::Migration
    def change 
        rename_column :smoothies, :type, :category
    end 
end 