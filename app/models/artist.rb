class Artist < ApplicationRecord
  # inheriting from AR gives attribute readers + writers
  # artist.name (reader)
  # artist.album_count = 5 (writer)
  # Artist.new(name: "Missy Elliot", country: "USA", album_count: 15)
  def full_details
    return "The artist #{name} is from #{country}, and has #{album_count} albums released."
  end
end
