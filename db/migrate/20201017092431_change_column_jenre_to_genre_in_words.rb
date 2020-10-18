class ChangeColumnJenreToGenreInWords < ActiveRecord::Migration[5.2]
  def change
    rename_column :words, :jenre, :genre
  end
end
