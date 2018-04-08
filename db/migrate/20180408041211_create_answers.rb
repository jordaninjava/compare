class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :model
      t.integer :difference

      t.timestamps
    end
  end
end
