Game.delete_all
Genre.delete_all
Publisher.delete_all
Platform.delete_all
Province.delete_all
AdminUser.delete_all

Province.create(
  name: "Manitoba"
)

Province.create(
  name: "Alberta"
)

Province.create(
  name: "Ontario"
)

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
    Game.create(
      game_name:    Faker::Game.title,
      release_year: Faker::Date.between(from: 20.years.ago, to: Time.zone.today),
      price:        Faker::Commerce.price,
      genre_id:     game_genre.id,
      publisher_id: game_publisher.id,
      platform_id:  game_platforms.id
    )
  end
end
