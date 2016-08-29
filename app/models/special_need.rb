class SpecialNeed < ActiveRecord::Base
  has_and_belongs_to_many :students, through: 

  validates :name, presence: true
end
