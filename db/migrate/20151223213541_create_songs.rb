class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :song_id
      t.string :spng_title
      t.string :album_id
      t.boolean :favorite_song

      t.timestamps null: false
    end
  end
end
