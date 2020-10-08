class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.integer "customer_id", null: false
      t.string "name", null: false
      t.string "part_of_speech", null: false
      t.string "meaning", null: false
      t.string "sentence", null: false
      t.string "memo", null: false
      t.string "image_id"
      t.integer "status", null: false, default: 0
      t.integer "jenre", null: false, default: 0
      t.timestamps
    end
  end
end
