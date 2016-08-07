class CategoryController < ApplicationController
  def index
    Category.create(name: 'Yangon')
    Category.create(name: 'IT')
    Category.create(name: 'Japan')
    render :json => {:category => Category.all.as_json(:only => [:name]) }
  end
end
