class QuizzController < ApplicationController
  def index
    quizz = Category.where(name: params[:category]).first.quizzes
    render :json => {:quiz => Quiz.get_quizz(quizz)}
  end
end
