class CreateTrials < ActiveRecord::Migration
  def change
    create_table :trials do |t|
      t.integer :id
      t.string :name,              :null => false
      t.text :description,         :null => false, :default => ""
      t.timestamps
    end
  end
end
