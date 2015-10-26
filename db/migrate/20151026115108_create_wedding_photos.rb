class CreateWeddingPhotos < ActiveRecord::Migration
  def change
    create_table :wedding_photos do |t|
      t.references :wedding
      t.attachment :name

      t.timestamps null: false
    end
  end
end
