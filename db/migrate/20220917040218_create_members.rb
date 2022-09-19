class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :memID
      t.string :name
      t.string :email
      t.boolean :officer
      t.string :notes

      t.timestamps
    end
  end
end
