class ChangeDataGenreToTests < ActiveRecord::Migration[5.2]
  def change
    change_column :tests, :genre, :integer
  end
end
