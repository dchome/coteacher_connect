class Component < ActiveRecord::Base
  belongs_to :subject
  belongs_to :student

  validates :name, presence: true
end
