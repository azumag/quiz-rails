class CategoryController < ApplicationController
  def index
    render :json => {:category => Category.all.as_json(:only => [:name]) }
  end
end
