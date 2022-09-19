class CreateOfficerNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :officer_notes do |t|
      t.string :memID
      t.integer :pComplete
      t.integer :ranking
      t.string :notes

      t.timestamps
    end
  end
end
