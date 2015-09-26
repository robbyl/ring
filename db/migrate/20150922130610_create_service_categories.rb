class CreateServiceCategories < ActiveRecord::Migration
  def change
    create_table :service_categories do |t|
      t.string :name
      t.attachment :image

      t.timestamps null: false
    end
  end
end
