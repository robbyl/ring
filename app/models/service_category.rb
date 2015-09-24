class ServiceCategory < ActiveRecord::Base
  has_many :services
  has_attached_file :image, { medium: '300x300>', thumb: '100x100#' }
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  # validates :image, attachment_presence: true
  # validates_with AttachmentPresenceValidator, attributes: :image
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 1.megabytes
end
