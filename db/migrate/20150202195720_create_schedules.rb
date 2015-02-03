class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :age, null: false, default:0
      t.date :dob, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zipcode, null: false
      t.string :urgency, null: false
      t.datetime :time, null: false
      t.text :note

      t.timestamps null: false
    end
  end
end
