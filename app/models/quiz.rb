class Quiz < ApplicationRecord
  belongs_to :category
  has_many :answers, dependent: :destroy

  accepts_nested_attributes_for :answers
  accepts_nested_attributes_for :category

  def self.get_quizz quizzes
    quizzes.collect do |quiz|
      {
        id: quiz.id,
        question: quiz.question,
        answers: quiz.answers.map(&:ans_name),
        collect: quiz.collect
      }
    end
  end
end
