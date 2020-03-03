require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user1 = User.create!(email: 'tom@tom.com', password: 'test1234')
charity1 = Charity.create!(name: 'Save the Turtles', description:'Saving all the Turtles', location: 'Mexico', user: user1)
turtles = Project.create!(name: 'Save the Turtles', category: 'Front-end', charity_description: 'Saving all the turtles', website: 'www.savetheturtles.org', location: 'Mexico', project_description: 'We would like help redesigning our homepage', deadline: '10/05/2020', charity: charity1)
url_turtle = "https://images.unsplash.com/photo-1518467166778-b88f373ffec7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80"
turtles.photo.attach(io: open(url_turtle), filename: 'turtle_1')

user2 = User.create!(email: 'iram@iram.com', password: 'test1234')
charity2 = Charity.create!(name: 'Save the Turtles', description:'Saving all the Turtles', location: 'Mexico', user: user2)
giving = Project.create!(name: 'Life of Giving', category: 'Full-stack', charity_description: 'Giving help to those who need it', website: 'www.lifeofgiving.org', location: 'London', project_description: 'We need a full website rebuild', deadline: '13/07/2020', charity: charity2)
url_giving = "https://ssir.org/images/blog/barbara-amedeo-fundraising-holidays-tips592x333.jpg"
giving.photo.attach(io: open(url_giving), filename: 'giving_1')
