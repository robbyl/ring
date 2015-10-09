class Wedding < ActiveRecord::Base
  has_one :budget, dependent: :destroy
end
