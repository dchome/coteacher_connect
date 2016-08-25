class StudentsSpecialNeeds < ActiveRecord::Migration
  def change
    create_table :students_special_needs do |t|
      t.integer :student_id
      t.integer :special_needs_id
    end
  end
end
