class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :user_id
      t.string :password
      t.string :name
      t.integer :sex
      t.string :address
      t.string :tel    null: false
      t.date :birthday
      t.string :email
      t.boolean :admin_authority,default:false
      
      t.timestamps null: false
    end
  end
end
