class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :user_id
      t.string :address
      t.integer :tel
      t.integer :age
      t.string :email
      t.boolean :admin_authority
      t.string :user_id
      t.string :name

      t.timestamps null: false
    end
  end
end
