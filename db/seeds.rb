# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
    Category.create!(name: "Category1")
    Category.create!(name: "Category2")
    Category.create!(name: "Category3")
    Post.create!(title:"Post 1 title", body:"This is the body of Post 1", category_id:1)
    Post.create!(title:"Post 2 title", body:"This is the body of Post 2", category_id:1)
    Post.create!(title:"Post 3 title", body:"This is the body of Post 3", category_id:2)
    Post.create!(title:"Post 4 title", body:"This is the body of Post 4", category_id:2)
    Post.create!(title:"Post 5 title", body:"This is the body of Post 5", category_id:3)
    Post.create!(title:"Post 6 title", body:"This is the body of Post 6", category_id:3)
end