class CreateMeetOvers < ActiveRecord::Migration
  def change
    create_table :meet_overs do |t|
      t.boolean :food
      t.boolean :drink
      t.boolean :coffee
      t.belongs_to :meet_preference
      t.timestamps null: false
    end
  end
end
