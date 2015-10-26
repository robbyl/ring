class CreateWeddingAlbumPhotos < ActiveRecord::Migration
  def change
    create_table :wedding_album_photos do |t|
      t.references :wedding_album
      t.references :wedding_photo

      t.timestamps null: false
    end
  end
end
