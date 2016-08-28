class Note < ActiveRecord::Base
  belongs_to :noter, class_name: 'Teacher'
  belongs_to :student

  validates :text, presence: true
end
