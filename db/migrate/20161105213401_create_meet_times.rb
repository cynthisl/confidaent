class CreateMeetTimes < ActiveRecord::Migration
  def change
    create_table :meet_times do |t|

      t.timestamps null: false
    end
  end
end
