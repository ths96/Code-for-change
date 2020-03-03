require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Projects.destroy_all
# User.destroy_all

# user = User.create!(email: 'test@test.com', password: 'test1234')

# Project.create!

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
project = Project.new(title: 'NES', body: "A great console")
project.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
