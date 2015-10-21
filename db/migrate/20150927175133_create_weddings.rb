class CreateWeddings < ActiveRecord::Migration
  def change
    create_table :weddings do |t|
      t.string :groom_first_name
      t.string :groom_last_name
      t.string :bride_first_name
      t.string :bride_last_name
      t.string :location
      t.date :wedding_date
      t.integer :guests
      t.references :user


      t.timestamps null: false
    end
  end
end
