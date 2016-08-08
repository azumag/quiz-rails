class CategoriesController < ApplicationController
  def index
    render :json => {:category => Category.all.as_json(:only => [:name]) }
  end

  def list
    @categories = Category.all
  end

  def new
    @category = Category.new()
  end

  def create
    Category.create(category_params)
    redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to categories_path
  end

  def destroy
    @category = Category.delete(params[:id])
    redirect_to categories_path
  end

  def category_params
   params.require(:category).permit(:name)
  end

end
