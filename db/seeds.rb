# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
Post.create!(title:"Post 1 title", body:"This is the body of Post 1")
Post.create!(title:"Post 2 title", body:"This is the body of Post 2")
Post.create!(title:"Post 3 title", body:"This is the body of Post 3")
end