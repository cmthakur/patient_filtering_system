class CreateVaccencies < ActiveRecord::Migration
  def change
    create_table :vaccencies do |t|

      t.timestamps
    end
  end
end
