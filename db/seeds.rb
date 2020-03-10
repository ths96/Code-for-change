require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user1 = User.create!(email: 'tom@gmail.com', password: 'test1234')
charity1 = Charity.create!(name: 'Save the Turtles', description:'A conservation charity working to protect turtle nesting beaches, fund turtle rescue and rehabilitation and combat threats of pollution and turtle hunting. We want to conserve sea turtles by protecting their nesting beaches, halting both the targeted and accidental catch of turtles and supporting rescue centres around the world that return rehabilitated sea turtles to the wild.', location: 'Tulum, Mexico', user: user1)
turtles = Project.create!(name: 'Save the Turtles', category: 'Front-end', charity_description: 'A conservation charity working to protect turtle nesting beaches, fund turtle rescue and rehabilitation and combat threats of pollution and turtle hunting. We want to conserve sea turtles by protecting their nesting beaches, halting both the targeted and accidental catch of turtles and supporting rescue centres around the world that return rehabilitated sea turtles to the wild.', website: 'www.savetheturtles.org', location: 'Tulum, Mexico', project_description: 'Save the turtles is looking for a dedicated group of web delveopers to help us implement a payment funtion on our existing website. This will be instrumental in allowing us raise more money to support our cause.', deadline: '10/05/2020', charity: charity1)
url_turtle = "https://images.unsplash.com/photo-1518467166778-b88f373ffec7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80"
turtles.photo.attach(io: open(url_turtle), filename: 'turtle_1')
Booking.create(user: user1, project: turtles, status: 'accepted')

user2 = User.create!(email: 'iram@gmail.com', password: 'test1234')
charity2 = Charity.create!(name: 'Life of Giving', description:'Giving help to those who need it the most', location: 'London, UK', user: user2)
giving = Project.create!(name: 'Life of Giving', category: 'Full-stack', charity_description: 'Povery is a injustice against humanity. It robs people of their basis fundamental needs and creates a vunerability amoungst the masses. But together we have the power to transform lives. For 37 years Life of Giving has worked with the most marginalized citizens of society helping break the cycle of poverty', website: 'www.lifeofgiving.org', location: 'London, UK', project_description: 'We need a full website rebuild, this will include a home page, a page to brose our projects, a donation page, a fully-responsive footer and header with links to articles etc.', deadline: '13/07/2020', charity: charity2)
url_giving = "https://ssir.org/images/blog/barbara-amedeo-fundraising-holidays-tips592x333.jpg"
giving.photo.attach(io: open(url_giving), filename: 'giving_1')
Booking.create(user: user2, project: turtles, status: 'accepted')

user3 = User.create!(email: 'taylor@gmail.com', password: 'test1234')
charity3 = Charity.create!(name: 'Justice League', description:'Fighting women injustice', location: 'New York, USA', user: user3)
justice = Project.create!(name: 'Justice for Women', category: 'Back-end', charity_description: 'Over a quarter of a million women die each year from largely preventable causes related to pregnancy and childbirth. On average, greater numbers of women and girls die during and after natural disasters than men, and in situations of conflict or political unrest they are extremely vulnerable to sexual violence. Help Justice for women empower both women and girls', website: 'www.justiceleague.org', location: 'New York, USA', project_description: 'Our website crashes when we add new cases, need a group of coders to help sort this bug out', deadline: '01/04/2020', charity: charity3)
url_justice = "https://images.theconversation.com/files/174760/original/file-20170620-32329-qvf3j6.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip"
justice.photo.attach(io: open(url_justice), filename: 'justice_1')
Booking.create(user: user3, project: turtles, status: 'accepted')

user4 = User.create!(email: 'kathryn@gmail.com', password: 'test1234')
charity4 = Charity.create!(name: 'Tree Planter', description:'Planting Trees everywhere', location: 'Manaus, Brazil', user: user4)
trees = Project.create!(name: 'Tree Planter', category: 'Full-stack', charity_description: 'Here at tree planter we are trying to combat the effects of globale warming by planting more trees. We get stuck in with local communities to cultivate lasting change in their neighbourhoods – whether it’s revitalising forgotten spaces, creating healthier environments or getting people excited about growing, foraging and eating healthy food.', website: 'www.treeplanter.org', location: 'Manaus, Brazil', project_description: 'We would like to implement a map feature to keep track of our planting', deadline: '04/05/2020', charity: charity4)
url_trees = "https://ichef.bbci.co.uk/wwfeatures/live/976_549/images/live/p0/7n/19/p07n19vr.jpg"
trees.photo.attach(io: open(url_trees), filename: 'trees_1')
Booking.create(user: user4, project: turtles, status: 'accepted')

user5 = User.create!(email: 'plastic@gmail.com', password: 'test1234')
charity5 = Charity.create!(name: 'Reduce All Plastic', description:'Promoting the use of less plastic', location: 'Berlin, Germany', user: user5)
plastic = Project.create!(name: 'Reduce All Plastic', category: 'Full-stack', charity_description: 'Recycle Rebuild empowers communities to recycle waste into affordable, high-quality building materials, whilst providing an immediate source of income for those affected by natural disasters.', website: 'www.reduceallplastic.org', location: 'Berlin, Germany', project_description: 'We would like a chat function for our collaborators', deadline: '23/08/2020', charity: charity5)
url_plastic = "https://pbs.twimg.com/profile_images/1160224493266186240/uEjGefD4_400x400.jpg"
plastic.photo.attach(io: open(url_plastic), filename: 'plastic_1')
Booking.create(user: user5, project: turtles, status: 'accepted')

user6 = User.create!(email: 'arnie@gmail.com', password: 'test1234')
charity6 = Charity.create!(name: 'Stranded Saver', description:'Saving people at sea', location: 'Torquay, UK', user: user6)
saver = Project.create!(name: 'Stranded Saver', category: 'Front-end', charity_description: 'Saving people at sea', website: 'www.strandedsaver.org', location: 'Torquay, UK', project_description: 'We want to make our donation page more appealing', deadline: '10/05/2020', charity: charity6)
url_saver = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Air-sea-rescue-falmouth.jpg/1200px-Air-sea-rescue-falmouth.jpg"
saver.photo.attach(io: open(url_saver), filename: 'saver_1')
Booking.create(user: user6, project: turtles, status: 'accepted')

user7 = User.create!(email: 'bernie@gmail.com', password: 'test1234')
charity7 = Charity.create!(name: 'Castle Heritage', description:'Maintaining old castles in France', location: 'Reims, France', user: user7)
castle = Project.create!(name: 'Castle Heritage', category: 'Full-stack', charity_description: 'Maintaining old castles in France', website: 'www.castleheritage.org', location: 'Reims, France', project_description: 'We would like members to be able to upload and display photos', deadline: '01/06/2020', charity: charity7)
url_castle = "https://cdn.theculturetrip.com/wp-content/uploads/2016/04/800px-mont_st_michel_3_brittany_france_-_july_2011-650x461.jpg"
castle.photo.attach(io: open(url_castle), filename: 'castle_1')
Booking.create(user: user7, project: turtles, status: 'accepted')

user8 = User.create!(email: 'pete@gmail.com', password: 'test1234')
charity8 = Charity.create!(name: 'Water for All', description:'Creating sustainable water sources', location: 'Addis Ababa, Ethiopia', user: user8)
water = Project.create!(name: 'Water for All', category: 'Front-end', charity_description: 'Creating sustainable water sources', website: 'www.waterforall.org', location: 'Addis Ababa, Ethiopia', project_description: 'Our sign up page needs a revamp', deadline: '09/09/2020', charity: charity8)
url_water = "https://images.pexels.com/photos/68262/pexels-photo-68262.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
water.photo.attach(io: open(url_water), filename: 'water_1')
Booking.create(user: user8, project: turtles, status: 'accepted')

user9 = User.create!(email: 'elizabeth@gmail.com', password: 'test1234')
charity9 = Charity.create!(name: 'Get Physical', description:'Helping people get fit and stay healthy', location: 'Bristol, UK', user: user9)
physical = Project.create!(name: 'Get Physical', category: 'Full-Stack', charity_description: 'Helping people get fit and stay healthy', website: 'www.getphysical.org', location: 'Bristol, UK', project_description: 'We are a new charity and are looking for help setting up our whole website.', deadline: '02/09/2020', charity: charity9)
url_physical = "https://images.pexels.com/photos/2526878/pexels-photo-2526878.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
physical.photo.attach(io: open(url_physical), filename: 'physical_1')
Booking.create(user: user9, project: physical, status: 'accepted')

user10 = User.create!(email: 'ben@gmail.com', password: 'test1234')
charity10 = Charity.create!(name: 'Mental Health Awareness', description:'Our aim is to increase awareness of Mental Health', location: 'Los Angeles, USA', user: user10)
mental = Project.create!(name: 'Mental Health Awareness', category: 'Back-end', charity_description: 'Our aim is to increase awareness of Mental Health', website: 'www.mentalhealthawareness.org', location: 'Los Angeles, USA', project_description: 'We are having problems with using our database of users, we would like easier ways to use the data.', deadline: '14/07/2020', charity: charity10)
url_mental = "https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
mental.photo.attach(io: open(url_mental), filename: 'mental_1')
Booking.create(user: user10, project: physical, status: 'accepted')

user11 = User.create!(email: 'james@gmail.com', password: 'test1234')
charity11 = Charity.create!(name: 'Forest Fire Prevention', description:'We work with local authorities to decrease the chances of devastating forest fires', location: 'Sydney, Australia', user: user11)
fire = Project.create!(name: 'Forest Fire Prevention', category: 'Front-end', charity_description: 'We work with local authorities to decrease the chances of devastating forest fires', website: 'www.forestfireprevention.org', location: 'Sydney, Australia', project_description: 'We would like a redesign of our home page to make sure the critical information is more visible to the user.', deadline: '19/05/2020', charity: charity11)
url_fire = "https://images.pexels.com/photos/1365427/pexels-photo-1365427.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
fire.photo.attach(io: open(url_fire), filename: 'fire_1')
Booking.create(user: user11, project: physical, status: 'accepted')

user12 = User.create!(email: 'gemma@gmail.com', password: 'test1234')
charity12 = Charity.create!(name: 'Action on Piracy', description:'Helping the victims of Piracy, and working to stop the issue at the source', location: 'Gibralta, UK', user: user12)
piracy = Project.create!(name: 'Action on Piracy', category: 'Back-end', charity_description: 'Helping the victims of Piracy, and working to stop the issue at the source', website: 'www.actiononpiracy.org', location: 'Gibralta, UK', project_description: 'We want to implement a map function to help log the location of our recent activities.', deadline: '01/05/2020', charity: charity12)
url_piracy = "https://images.pexels.com/photos/799091/pexels-photo-799091.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
piracy.photo.attach(io: open(url_piracy), filename: 'piracy_1')
Booking.create(user: user12, project: physical, status: 'accepted')

user13 = User.create!(email: 'andrew@gmail.com', password: 'test1234')
charity13 = Charity.create!(name: 'Flood UK', description:'Assisting people in dealing with the before, during, and after-effects of flooding in the UK', location: 'Doncaster, UK', user: user13)
flood = Project.create!(name: 'Flood UK', category: 'Full-Stack', charity_description: 'Assisting people in dealing with the before, during, and after-effects of flooding in the UK', website: 'www.flood.co.uk', location: 'Doncaster, UK', project_description: 'We would like to implement a chat function, as well as being able to push notifications to our users.', deadline: '02/09/2020', charity: charity13)
url_flood = "https://images.pexels.com/photos/459451/pexels-photo-459451.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
flood.photo.attach(io: open(url_flood), filename: 'flood_1')
Booking.create(user: user13, project: flood, status: 'accepted')

Project.update_all(trello_token: 'b153769fd2f464911b007433e6544b24e97abff447de7845960a34380647b2f5')

Project.all.each_with_index do |project, index|
	f = open('https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf')
	project.file.attach(io: f, filename: "dummy-#{index}")
end
