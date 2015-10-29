class WeddingAlbum < ActiveRecord::Base
  belongs_to :wedding
  has_many :wedding_photos, through: :wedding_album_photos
end
