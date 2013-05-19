class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|

      t.integer :id
      t.string :question,          :null => false
      t.text :answers
      t.string :type
      t.integer :trial_id,          :null => false

      t.timestamps
    end
  end
end
