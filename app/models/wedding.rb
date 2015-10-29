class Wedding < ActiveRecord::Base
  belongs_to :user
  has_one :budget, dependent: :destroy
  has_many :wedding_photos, dependent: :destroy
  has_many :wedding_albums, dependent: :destroy
end
