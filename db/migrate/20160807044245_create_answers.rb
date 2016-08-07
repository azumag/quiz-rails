class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.references :quiz, foreign_key: true
      t.string :ans_name
      t.integer :number

      t.timestamps
    end
  end
end
