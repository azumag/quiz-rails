class CategoryController < ApplicationController
  def index
    Category.find_or_create(name: 'Yangon')
    Category.find_or_create(name: 'IT')
    Category.find_or_create(name: 'Japan') 
    render :json => {:category => Category.all.as_json(:only => [:name]) }
  end
end
