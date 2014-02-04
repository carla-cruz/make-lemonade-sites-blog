class CategoriesController < ApplicationController
  respond_to :html, :js

def index
  @category = Category.new
  @categories = Category.all
end

def new
  @category = Category.new
end



def create
  @category = Category.create!(category_params)
  respond_to do |format|
    format.html { redirect_to categories_path }
    format.js
  end
end

def destroy
  category = Category.find(params[:id])
  category.destroy
  redirect_to categories_path
end

private

  def category_params
    params.require(:category).permit(:name)
  end

end