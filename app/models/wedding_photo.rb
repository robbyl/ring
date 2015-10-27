class WeddingPhoto < ActiveRecord::Base
  belongs_to :wedding
  has_one :wedding_album, through: :wedding_album_photos
  has_attached_file :image, :styles => { :thumb => "180x180#" }

  validates_attachment :image, :presence => true,
                       :content_type => { :content_type => /\Aimage\/.*\Z/ },
                       :size => { :less_than => 1.megabyte }
end
