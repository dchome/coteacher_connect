class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

      t.string :text
      t.string :photo_path
      t.timestamps null: false
    end
  end
end
