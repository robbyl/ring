class WeddingAlbumPhoto < ActiveRecord::Base
  belongs_to :wedding_album
  belongs_to :wedding_photo
end
