class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|

      t.string :name, null: false
      t.string :schoolyear, null: false
      t.string :docdrive_url
      t.timestamps null: false
    end
  end
end
