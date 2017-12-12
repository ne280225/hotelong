class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :apply_count
      t.integer :price

      t.timestamps null: false
    end
  end
end
