class CreateAdders < ActiveRecord::Migration[5.0]
  def change
    create_table :adders do |t|

      t.timestamps
    end
  end
end
