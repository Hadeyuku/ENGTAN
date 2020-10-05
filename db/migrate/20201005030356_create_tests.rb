class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.integer "customer_id", null: false
      t.integer "quantity", null: false
      t.integer "true_quantity", null: false
      t.integer "false_quantity", null: false
      t.timestamps
    end
  end
end
