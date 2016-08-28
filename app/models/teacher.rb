class Teacher < ActiveRecord::Base
  has_secure_password

  has_and_belongs_to_many :classrooms
  has_many :students, through: :classrooms
  has_many :messages, foreign_key: :messager_id
  has_many :notes, foreign_key: :noter_id

  validates :first_name, :last_name, :username, :email, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_format_of :phone_number, :with => /\A\d{3}-\d{3}-\d{4}\z/, :on => :create
end
