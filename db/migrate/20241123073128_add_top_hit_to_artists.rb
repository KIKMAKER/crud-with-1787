class AddTopHitToArtists < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :top_hit, :string
  end
end
