class CreateTestWords < ActiveRecord::Migration[5.2]
  def change
    create_table :test_words do |t|
      t.integer "word_id", null: false
      t.integer "test_id", null: false
      t.integer "status", null: false, default: 0
      t.timestamps
    end
  end
end
