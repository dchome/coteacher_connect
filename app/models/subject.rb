class Subject < ActiveRecord::Base
  has_many :components
  has_many :students, through: :components
end
