class Teacher < ActiveRecord::Base
  has_secure_password

  has_and_belongs_to_many :classrooms
  has_many :students, through: :classrooms
  has_many :messages, foreign_key: :messager_id
  has_many :notes, foreign_key: :noter_id

  validates :first_name, :last_name, :username, :email, :phone_number, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_format_of :phone_number, :with => /\A\d{3}-\d{3}-\d{4}\z/, :on => :create

  def full_name
    self.first_name + " " + self.last_name
  end

  def self.names_array
    Teacher.all.map {|teacher| teacher.full_name}
  end

  def self.find_by_full_name(full_name)
    full_name = full_name || []
    name_split = full_name.split(" ")
    Teacher.where(first_name: name_split[0], last_name: name_split[1])
  end

  def all_other_teachers
    Teacher.all - [self]
  end

  def all_other_teacher_names
    Teacher.names_array - [self.full_name]
  end
end
