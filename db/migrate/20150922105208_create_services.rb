class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.text :description
      t.float :rate_times
      t.integer :capacity
      t.string :location
      t.attachment :image

      t.references :vendor
      t.references :service_category

      t.timestamps null: false
    end
  end
end
