class CreateMeetOvers < ActiveRecord::Migration
  def change
    create_table :meet_overs do |t|

      t.timestamps null: false
    end
  end
end
