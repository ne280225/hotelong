class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :class_room_id
      t.integer :room_number

      t.timestamps null: false
    end
  end
end
