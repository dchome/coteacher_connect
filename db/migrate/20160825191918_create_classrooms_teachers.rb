class CreateClassroomsTeachers < ActiveRecord::Migration
  def change
    create_table :classrooms_teachers do |t|
      t.integer :teacher_id
      t.integer :classroom_id
    end
  end
end
