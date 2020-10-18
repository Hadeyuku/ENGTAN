class AddContentToTestWords < ActiveRecord::Migration[5.2]
  def change
    add_column :test_words, :content, :string
  end
end
