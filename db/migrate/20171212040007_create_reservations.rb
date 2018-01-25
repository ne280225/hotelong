class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :room_id
      t.references :plan_id
      t.references :member
      t.integer :guest_count
      t.integer :sum_price
      t.date :start_date
      t.date :end_date
      t.boolean :is_extend

      t.timestamps 
    end
  end
end
