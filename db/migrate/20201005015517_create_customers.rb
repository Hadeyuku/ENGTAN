class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string "family_name", null: false
      t.string "first_name", null: false
      t.string "email", null: false
      t.string "encrypted_password", null: false
      t.integer "status", null: false, default: 0
      t.timestamps
    end
  end
end
