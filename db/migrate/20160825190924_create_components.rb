class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|

      t.string :name, null: false
      t.integer :subject_id, null: false
      t.integer :student_id, null: false
      t.boolean :checked, default: false
      t.timestamps null: false
    end
  end
end
