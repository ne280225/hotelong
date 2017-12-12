class CreatePlanRooms < ActiveRecord::Migration
  def change
    create_table :plan_rooms do |t|
      t.integer :room_id
      t.integer :plan_id

      t.timestamps null: false
    end
  end
end
