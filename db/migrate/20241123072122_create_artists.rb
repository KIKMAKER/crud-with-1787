class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :country
      t.integer :album_count

      t.timestamps
    end
  end
end
