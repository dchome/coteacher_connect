class User < ActiveRecord::Base
  has_and_belongs_to_many :classrooms
  has_many :students, through: :classrooms
  has_many :notes
  
end
