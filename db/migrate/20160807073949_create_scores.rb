class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.float :accuracy_rate
      t.references :user, foreign_key: true
      t.references :category

      t.timestamps
    end
  end
end
