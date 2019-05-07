# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

authors = []

for i in 1..20
    author = Author.create(name: Faker::Book.author)
    authors.push(author)
    p "Create #{i} author"
end

for i in 1..10
    author = authors[rand((authors.length - 1))]
    author.books.create(
        title: Faker::Book.title,
        genre: Faker::Book.genre
    )
    p "Create #{i} book"
end