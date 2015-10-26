class CreateWeddingAlbumPhotos < ActiveRecord::Migration
  def change
    create_table :wedding_album_photos do |t|

      t.timestamps null: false
    end
  end
end
