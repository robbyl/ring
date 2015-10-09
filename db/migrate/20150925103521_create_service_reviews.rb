class CreateServiceReviews < ActiveRecord::Migration
  def change
    create_table :service_reviews do |t|
      t.integer :rate
      t.string :title
      t.string :content
      t.references :service
      # t.references :user

      t.timestamps null: false
    end
  end
end
