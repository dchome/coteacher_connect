class Message < ActiveRecord::Base
  belongs_to :messager, class_name: 'Teacher'
  belongs_to :classroom

end
