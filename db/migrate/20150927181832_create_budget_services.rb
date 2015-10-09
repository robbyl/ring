class CreateBudgetServices < ActiveRecord::Migration
  def change
    create_table :budget_services do |t|
      t.decimal :cost, precision: 8, scale: 2
      t.references :budget
      t.references :service_category
      t.references :service

      t.timestamps null: false
    end
  end
end
