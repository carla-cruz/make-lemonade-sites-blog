class DropColumnInPosts < ActiveRecord::Migration
  def change
remove_column :posts, :category_id

  end
end
