class WeddingAlbum < ActiveRecord::Base
  belongs_to :wedding, dependent: :destroy
  has_many :wedding_photos, through: :wedding_album_photos
end
