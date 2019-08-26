100.times do 
  Artist.create!(
    name: Faker::TvShows::TheITCrowd.character,
    song: Faker::WorldOfWarcraft.quote)
end

