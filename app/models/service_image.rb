class ServiceImage < ActiveRecord::Base
  belongs_to :service
  has_attached_file :image

  do_not_validate_attachment_file_type :image
end
