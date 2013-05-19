class CreateVaccencies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.integer :id
      t.integer :trial_period
      t.integer :max_subject
      t.date :closing_date

      t.integer :trial_id

      t.timestamps
    end
  end
end