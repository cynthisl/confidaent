class CreateStrengths < ActiveRecord::Migration
  def change
    create_table :strengths do |t|
      t.belongs_to :skill
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
