class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

      t.string :text, null: false
      t.string :photo_path
      t.integer :messager_id, null: false
      t.timestamps null: false
    end
  end
end
