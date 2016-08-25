class CreateSpecialNeeds < ActiveRecord::Migration
  def change
    create_table :special_needs do |t|

      t.timestamps null: false
    end
  end
end
