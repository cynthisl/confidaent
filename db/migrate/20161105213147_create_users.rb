class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :zip_code
      t.datetime :birthdate
      t.integer :career_status
      t.string :photo

      t.timestamps null: false
    end
  end
end
