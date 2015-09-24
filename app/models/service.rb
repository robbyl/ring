class Service < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :service_category
  validates_presence_of :name
end
