class CategoryController < ApplicationController
  def index
    render :json => {:category => Category.all.as_json(:only => [:name]) }
  end

  def new
    @category = Category.new()
  end

end
