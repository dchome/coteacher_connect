class Subject < ActiveRecord::Base
  has_many :components
  has_many :students, through: :components

  validates :name, presence: true
end
