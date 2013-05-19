class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|

      t.integer :id
      t.string :question,          :null => false
      t.text :answers
      t.string :type
      t.integer :trial_id,          :null => false

      t.timestamps
    end
  end
end
