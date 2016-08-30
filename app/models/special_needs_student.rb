class SpecialNeedsStudent < ActiveRecord::Base
  has_many :special_needs
  has_many :students
end
