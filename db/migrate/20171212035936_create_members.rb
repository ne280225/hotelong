class CreateMembers < ActiveRecord::Migration
  def create
    create_table :members do |t|
      t.string :user_id, null: false
      t.string :hashed_password, null: false
      t.string :name, null: false
      t.integer :sex, null: false
      t.string :address, null: false
      t.string :tel, null: false
      t.date :birthday, null: false
      t.string :email, null: false
      t.boolean :admin_authority, default: false

      t.timestamps null: false
    end
  end
end