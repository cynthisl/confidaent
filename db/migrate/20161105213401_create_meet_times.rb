class CreateMeetTimes < ActiveRecord::Migration
  def change
    create_table :meet_times do |t|
      t.belongs_to :meet_preference
      t.boolean :mon_morn
      t.boolean :mon_afternoon
      t.boolean :mon_evening
      t.boolean :tue_morn
      t.boolean :tue_afternoon
      t.boolean :tue_evening
      t.boolean :wed_morn
      t.boolean :wed_afternoon
      t.boolean :wed_evening
      t.boolean :thur_morn
      t.boolean :thur_afternoon
      t.boolean :thur_evening
      t.boolean :fri_morn
      t.boolean :fri_afternoon
      t.boolean :fri_evening
      t.boolean :sat_morn
      t.boolean :sat_afternoon
      t.boolean :sat_evening
      t.boolean :sun_morn
      t.boolean :sun_afternoon
      t.boolean :sun_evening

      t.timestamps null: false
    end
  end
end
