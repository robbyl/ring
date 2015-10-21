class Wedding < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_one :budget, dependent: :destroy
end
