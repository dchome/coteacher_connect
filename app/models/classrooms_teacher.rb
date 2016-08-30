class ClassroomsTeacher < ActiveRecord::Base
  has_many :classrooms
  has_many :teachers
end
