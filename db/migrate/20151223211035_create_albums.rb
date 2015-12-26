class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :album_id
      t.string :album_title
      t.date :album_date
      t.integer :artist_id
      t.boolean :favorite_album
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
