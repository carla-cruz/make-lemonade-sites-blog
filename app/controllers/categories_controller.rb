class CategoriesController < ApplicationController

def index
  @category = Category.new
  @categories = Category.all
end

def create
  category = Category.find_or_create_by_name(params[:category][:name])
  redirect_to categories_path
end

def destroy
  category = Category.find(params[:id])
  category.destroy
  redirect_to categories_path
end

end