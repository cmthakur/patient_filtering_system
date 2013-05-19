class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|

      t.integer :id
      t.string :fname
      t.string :mname
      t.string :lname
      t.string :email
      t.string :father_name
      t.date :dob
      t.string :mobile
      t.string :phone
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end