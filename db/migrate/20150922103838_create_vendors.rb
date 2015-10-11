class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website
      t.attachment :logo

      t.timestamps null: false
    end
  end
end
