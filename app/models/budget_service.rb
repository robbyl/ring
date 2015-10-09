class BudgetService < ActiveRecord::Base
  belongs_to :budget
  belongs_to :service_category
  belongs_to :service
end
