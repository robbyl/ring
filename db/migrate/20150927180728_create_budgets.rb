class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.references :wedding

      t.timestamps null: false
    end
  end
end
