class CreateClassRooms < ActiveRecord::Migration
  def change
    create_table :class_rooms do |t|
      t.integer :person_price
      t.string :style_name
      t.integer :expect_count
      t.boolean :can_add_bed
      t.float :discount_rate
      t.float :surcharge_rate

      t.timestamps null: false
    end
  end
end
