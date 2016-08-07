class QuizzController < ApplicationController
  def show
    quizz = Category.where(name: params[:id]).first.quizzes
    render :json => {:quiz => Quiz.get_quizz(quizz)}
  end
end
