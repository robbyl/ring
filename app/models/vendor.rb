class Vendor < ActiveRecord::Base
  has_many :services
  has_many :services
  validates_presence_of :name, :address, :phone
end
