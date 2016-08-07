class RankingController < ApplicationController
  def index
  end

  def show

    @category_name = params[:id]
    unless @category_name
      @category_name = "Yangon"
    end
    category = Category.find_by_name(@category_name)
    @scores = category.scores.order("accuracy_rate DESC")
  end

  def create
    username      = params[:name]
    accuracy_rate = params[:accuracy_rate]
    category_name = params[:category]
    category = Category.find_by_name(category_name)

    if category
      user  = User.find_or_create_by(name: username)
      score = Score.create(accuracy_rate: accuracy_rate)

      score.category = category
      user.scores << score

      score.save
      user.save
    end

  end
end
