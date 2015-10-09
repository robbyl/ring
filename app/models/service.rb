class Service < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :service_category
  has_many :service_reviews, :dependent => :destroy
  has_attached_file :image
  has_many :service_images, :dependent => :destroy

  validates_presence_of :name
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
