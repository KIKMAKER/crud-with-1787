class Artist < ApplicationRecord
  # inheriting from AR gives attribute readers + writers
  # artist.name (reader)
  # artist.album_count = 5 (writer)
  # Artist.new(name: "Missy Elliot", country: "USA", album_count: 15)
end
