class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.belongs_to :skill
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
