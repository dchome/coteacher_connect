class Note < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :student
end
