class Classroom < ActiveRecord::Base
  has_and_belongs_to_many :teachers
  has_many :students
  has_many :notes, through: :students
  has_many :components, through: :students
  has_many :messages, dependent: :destroy

  validates :name, :schoolyear, presence: true

  def list_teacher_names
    teachers = self.teachers
    if teachers != []
      list = teachers[0].full_name
      list += ", " + teachers[1].full_name if(teachers[1])
    else
      list = "Unassigned"
    end
    list
  end

  #gets most recent messages in sets of ten, where set_idx of 0 is 1st to 10th most recent, set_idx of 1 is 11th to 20th most recent, etc. Gets all messages, or all within the specified set, if the set has fewer than 10 messages in it.
  def ten_messages(set_idx)
    set_idx = set_idx || 0
    idx1 = -10 + (-10* set_idx)
    idx2 = -1 + (-10*set_idx)
    if !self.messages[idx2]
      return nil
    else
      while !self.messages[idx1]
        idx1 += 1
      end
      return self.messages[idx1..idx2]
    end
  end

end
