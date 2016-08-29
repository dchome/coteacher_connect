class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|

      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :birthday
      t.integer :classroom_id
      t.timestamps null: false
    end
  end
end
