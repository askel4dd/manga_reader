class CreateMangas < ActiveRecord::Migration
  def change
    create_table :mangas do |t|
      t.string :title, null: false
      t.string :genre
      t.string :author
      t.string :chapters

      t.timestamps null: false
    end

    add_index :mangas, :title, unique: true
  end
end
