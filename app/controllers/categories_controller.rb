class CategoriesController < ApplicationController

def create
@category = Category.find_or_create_by(params[:id])
end

def delete
end

end