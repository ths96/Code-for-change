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
charity1 = Charity.create!(name: 'Save the Turtles', description:'is a conservation charity working to protect turtle nesting beaches, fund turtle rescue and rehabilitation and combat threats of pollution and turtle hunting. We want to conserve sea turtles by protecting their nesting beaches, halting both the targeted and accidental catch of turtles and supporting rescue centres around the world that return rehabilitated sea turtles to the wild.', location: 'Tulum, Mexico', user: user1)
turtles = Project.create!(name: 'Save the Turtles', category: 'Front-end', charity_description: 'is a conservation charity working to protect turtle nesting beaches, fund turtle rescue and rehabilitation and combat threats of pollution and turtle hunting. We want to conserve sea turtles by protecting their nesting beaches, halting both the targeted and accidental catch of turtles and supporting rescue centres around the world that return rehabilitated sea turtles to the wild.', website: 'www.savetheturtles.org', location: 'Mexico', project_description: 'Save the turtles is looking for a dedicated group of web delveopers to help us implement a payment funtion on our existing website. This will be instrumental in allowing us raise more money to support our cause.', deadline: '10/05/2020', charity: charity1)
url_turtle = "https://images.unsplash.com/photo-1518467166778-b88f373ffec7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80"
turtles.photo.attach(io: open(url_turtle), filename: 'turtle_1')

user2 = User.create!(email: 'iram@iram.com', password: 'test1234')
charity2 = Charity.create!(name: 'Life of Giving', description:'Giving help to those who need it the most', location: 'London, UK', user: user2)
giving = Project.create!(name: 'Life of Giving', category: 'Full-stack', charity_description: 'Povery is a injustice against humanity. It robs people of their basis fundamental needs and creates a vunerability amoungst the masses. But together we have the power to transform lives. For 37 years Life of Giving has worked with the most marginalized citizens of society helping break the cycle of poverty', website: 'www.lifeofgiving.org', location: 'London', project_description: 'We need a full website rebuild, this will include a home page, a page to brose our projects, a donation page, a fully-responsive footer and header with links to articles etc.', deadline: '13/07/2020', charity: charity2)
url_giving = "https://ssir.org/images/blog/barbara-amedeo-fundraising-holidays-tips592x333.jpg"
giving.photo.attach(io: open(url_giving), filename: 'giving_1')

user3 = User.create!(email: 'taylor@taylor.com', password: 'test1234')
charity3 = Charity.create!(name: 'Justice League', description:'Fighting women injustice', location: 'New York, USA', user: user3)
justice = Project.create!(name: 'Justice for Women', category: 'Back-end', charity_description: 'Over a quarter of a million women die each year from largely preventable causes related to pregnancy and childbirth. On average, greater numbers of women and girls die during and after natural disasters than men, and in situations of conflict or political unrest they are extremely vulnerable to sexual violence. Help Justice for women empower both women and girls', website: 'www.justiceleague.org', location: 'New York', project_description: 'Our website crashes when we add new cases, need a group of coders to help sort this bug out', deadline: '01/04/2020', charity: charity3)
url_justice = "https://images.theconversation.com/files/174760/original/file-20170620-32329-qvf3j6.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip"
justice.photo.attach(io: open(url_justice), filename: 'justice_1')

user4 = User.create!(email: 'kathryn@kathryn.com', password: 'test1234')
charity4 = Charity.create!(name: 'Tree Planter', description:'Planting Trees everywhere', location: 'Manaus, Brazil', user: user4)
trees = Project.create!(name: 'Tree Planter', category: 'Full-stack', charity_description: 'Here at tree planter we are trying to combat the effects of globale warming by planting more trees. We get stuck in with local communities to cultivate lasting change in their neighbourhoods – whether it’s revitalising forgotten spaces, creating healthier environments or getting people excited about growing, foraging and eating healthy food.', website: 'www.treeplanter.org', location: 'Brazil', project_description: 'We would like to implement a map feature to keep track of our planting', deadline: '04/05/2020', charity: charity4)
url_trees = "https://ichef.bbci.co.uk/wwfeatures/live/976_549/images/live/p0/7n/19/p07n19vr.jpg"
trees.photo.attach(io: open(url_trees), filename: 'trees_1')

user5 = User.create!(email: 'plastic@plastic.com', password: 'test1234')
charity5 = Charity.create!(name: 'Reduce All Plastic', description:'Promoting the use of less plastic', location: 'Berlin, Germany', user: user5)
plastic = Project.create!(name: 'Reduce All Plastic', category: 'Full-stack', charity_description: 'Recycle Rebuild empowers communities to recycle waste into affordable, high-quality building materials, whilst providing an immediate source of income for those affected by natural disasters.', website: 'www.reduceallplastic.org', location: 'Berlin', project_description: 'We would like a chat function for our collaborators', deadline: '23/08/2020', charity: charity5)
url_plastic = "https://pbs.twimg.com/profile_images/1160224493266186240/uEjGefD4_400x400.jpg"
plastic.photo.attach(io: open(url_plastic), filename: 'plastic_1')

user6 = User.create!(email: 'arnie@arnie.com', password: 'test1234')
charity6 = Charity.create!(name: 'Stranded Saver', description:'Saving people at sea', location: 'Torquay, UK', user: user6)
saver = Project.create!(name: 'Stranded Saver', category: 'Front-end', charity_description: 'Saving people at sea', website: 'www.strandedsaver.org', location: 'Torquay', project_description: 'We want to make our donation page more appealing', deadline: '10/05/2020', charity: charity6)
url_saver = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Air-sea-rescue-falmouth.jpg/1200px-Air-sea-rescue-falmouth.jpg"
saver.photo.attach(io: open(url_saver), filename: 'saver_1')

user7 = User.create!(email: 'bernie@bernie.com', password: 'test1234')
charity7 = Charity.create!(name: 'Castle Heritage', description:'Maintaining old castles', location: 'Reims, France', user: user7)
castle = Project.create!(name: 'Castle Heritage', category: 'Full-stack', charity_description: 'Maintaining old castles', website: 'www.castleheritage.org', location: 'France', project_description: 'We would like members to be able to upload and display photos', deadline: '01/06/2020', charity: charity7)
url_castle = "https://cdn.theculturetrip.com/wp-content/uploads/2016/04/800px-mont_st_michel_3_brittany_france_-_july_2011-650x461.jpg"
castle.photo.attach(io: open(url_castle), filename: 'castle_1')

user8 = User.create!(email: 'pete@pete.com', password: 'test1234')
charity8 = Charity.create!(name: 'Water for All', description:'Creating sustainable water sources', location: 'Addis Ababa, Ethiopia', user: user8)
water = Project.create!(name: 'Water for All', category: 'Front-end', charity_description: 'Creating sustainable water sources', website: 'www.waterforall.org', location: 'Ethiopia', project_description: 'Our sign up page needs a revamp', deadline: '09/09/2020', charity: charity8)
url_water = "https://d346xxcyottdqx.cloudfront.net/wp-content/uploads/2017/05/Watersplash-NOM-stock-1024x680.jpg"
water.photo.attach(io: open(url_water), filename: 'water_1')

