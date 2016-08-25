class Student < ActiveRecord::Base
  belongs_to :classroom
  has_many :teachers, through: :classroom
  has_many :notes
  has_many :components
  has_many :subjects, through: :components
  has_many :special_needs
end
