class AddColumnsToTests < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :status, :integer
    add_column :tests, :genre, :string
  end
end
