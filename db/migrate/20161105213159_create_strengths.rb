class CreateStrengths < ActiveRecord::Migration
  def change
    create_table :strengths do |t|

      t.timestamps null: false
    end
  end
end
