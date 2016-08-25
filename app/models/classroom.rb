class Classroom < ActiveRecord::Base
  has_and_belongs_to_many :teachers
  has_many :students
  has_many :notes, through: :students
  has_many :components, through: :students
  has_many :messages

end
