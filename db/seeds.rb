Game.delete_all
Genre.delete_all
Publisher.delete_all
Platform.delete_all
AdminUser.delete_all

AdminUser.create(
  email:                 "admin@example.com",
  password:              "password",
  password_confirmation: "password"
)

NUMBER_OF_GENRES = 10
GAMES_PER_GENRE = 100

NUMBER_OF_GENRES.times do
  game_genre = Genre.create(genre_name: Faker::Game.unique.genre)
  game_publisher = Publisher.create(publisher_name: Faker::Company.unique.name)
  game_platforms = Platform.create(platform_name: Faker::Game.unique.platform)

  GAMES_PER_GENRE.times do
    game = Game.create(
      game_name:    Faker::Game.title,
      release_year: Faker::Date.between(from: 20.years.ago, to: Date.today),
      price:        Faker::Commerce.price,
      genre_id:     game_genre.id,
      publisher_id: game_publisher.id,
      platform_id:  game_platforms.id
    )
  end
end

puts "Created #{Publisher.count} Publishers"
puts "Created #{Genre.count} Game Gategories"
puts "Created #{Game.count} Games"
