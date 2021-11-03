# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Cleaning database"

Project.destroy_all

puts "Database cleaned"

puts "Creating Projects"

20.times do
  Project.create!(
    title: Faker::Educator.subject,
    bio: Faker::Educator.degree ,
    content: Faker::Lorem.paragraph(sentence_count: 4),
    current: true
  )
end

puts "Projects created"

puts "Creating admin"

User.create(email: 'admin@gmail.com', password: '123456')

puts "admin created"
