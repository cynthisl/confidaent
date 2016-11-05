class CreateMeetPreferences < ActiveRecord::Migration
  def change
    create_table :meet_preferences do |t|
      t.belongs_to :user
      t.string :meet_type

      t.timestamps null: false
    end
  end
end
