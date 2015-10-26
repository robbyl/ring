class Wedding < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_one :budget, dependent: :destroy
  has_many :wedding_photos, dependent: :destroy
end
