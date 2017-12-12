class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :room_id
      t.integer :plan_id
      t.integer :member_id
      t.integer :guest_count
      t.integer :sum_price
      t.date :start_date
      t.date :end_date
      t.boolean :is_extend

      t.timestamps null: false
    end
  end
end
