class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :salt
      t.string :hashed_password
      t.boolean :is_admin, default: false



      t.timestamps null: false
    end
  end
end
