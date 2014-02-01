class DropColumnInCategories < ActiveRecord::Migration
  def change

remove_column :categories, :post_id

  end
end
