class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.references :category, foreign_key: true
      t.string :question
      t.integer :collect

      t.timestamps
    end
  end
end
