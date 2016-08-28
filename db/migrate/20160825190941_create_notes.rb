class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|

      t.string :text, null: false
      t.integer :student_id, null: false
      t.integer :noter_id, null: false
      t.timestamps null: false
    end
  end
end
