class CreateSpecialNeedsStudents < ActiveRecord::Migration
  def change
    create_table :special_needs_students do |t|
      t.integer :special_needs_id
      t.integer :student_id
    end
  end
end
