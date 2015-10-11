class Vendor < ActiveRecord::Base
  has_many :services, dependent: :destroy
  has_attached_file :logo

  validates_presence_of :name, :address, :phone
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, attributes: :logo, less_than: 10.megabytes
end
