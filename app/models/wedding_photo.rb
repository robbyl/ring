class WeddingPhoto < ActiveRecord::Base
  belongs_to :wedding
  has_one :wedding_album, through: :wedding_album_photos
end
