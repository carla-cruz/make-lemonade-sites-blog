class CreatePosts < ActiveRecord::Migration
    create_table :posts do |t|
    	t.string :title
    	t.text :body
    	t.timestamps
  end
end
