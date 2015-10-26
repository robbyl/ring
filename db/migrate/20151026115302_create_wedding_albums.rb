class CreateWeddingAlbums < ActiveRecord::Migration
  def change
    create_table :wedding_albums do |t|
      t.references :wedding

      t.timestamps null: false
    end
  end
end
