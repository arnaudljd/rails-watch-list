# Clean DB
Movie.destroy_all

10.times do
  Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Lorem.sentence(word_count: 8),
    poster_url: Faker::LoremFlickr.image(size: "300x300"),
    rating: (rand()*10).round(1),
  )
end
