class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|

      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :username, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :photo_path
      t.string :phone_number, null: false
      t.timestamps null: false
    end
  end
end
