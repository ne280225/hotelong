class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :class_room_id,     null: false
      t.integer :room_number,     null: false

      t.timestamps null: false
    end
  end
end
