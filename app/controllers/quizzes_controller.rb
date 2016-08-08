class QuizzesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @quiz = Quiz.new()
    4.times do |i|
      @quiz.answers << Answer.new(number: i)
    end
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      redirect_to quizzes_path
    else
      render action: :new
    end
  end

  def show
    quizz = Category.where(name: params[:id]).first.quizzes
    render :json => {:quiz => Quiz.get_quizz(quizz)}
  end

  def destroy
    quiz = Quiz.find(params[:id])
    quiz.destroy

    redirect_to quizzes_path
  end

  def quiz_params
    params.require(:quiz).permit(:question, :collect, :category_id, answers_attributes: [:ans_name, :number])
  end
end
