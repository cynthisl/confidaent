class CreateMeetPreferences < ActiveRecord::Migration
  def change
    create_table :meet_preferences do |t|


      t.timestamps null: false
    end
  end
end
