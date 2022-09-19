class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :answerID
      t.string :memID
      t.string :questionID
      t.string :answer

      t.timestamps
    end
  end
end
