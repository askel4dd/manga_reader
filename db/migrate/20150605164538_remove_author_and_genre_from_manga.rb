class RemoveAuthorAndGenreFromManga < ActiveRecord::Migration
  def change
    remove_column :mangas, :author, :string
    remove_column :mangas, :genre, :string
  end
end
