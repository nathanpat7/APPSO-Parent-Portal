class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :questionID
      t.string :prompt
      t.string :type
      t.string :answer
      t.string :expected_answer
      t.integer :page
      t.integer :index

      t.timestamps
    end
  end
end
