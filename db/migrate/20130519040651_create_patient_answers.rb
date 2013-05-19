class CreatePatientAnswers < ActiveRecord::Migration
  def change
    create_table :patient_answers do |t|
      t.integer :id
      t.string :answer
      t.string :status
      t.integer :patient_id
      t.integer :exam_id
      t.timestamps
    end
  end
end
