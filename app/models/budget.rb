class Budget < ActiveRecord::Base
  belongs_to :wedding
  has_many :budget_services
end
