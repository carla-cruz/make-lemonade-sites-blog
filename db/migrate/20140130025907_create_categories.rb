class CreateCategories < ActiveRecord::Migration
    create_table :categories do |t|
    	t.string :name
  end
end
