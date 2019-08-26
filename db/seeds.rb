100.times do 
  Artist.create!(
    name: Faker::Pokemon.name,
    song: Faker::WorldOfWarcraft.quote)
end

