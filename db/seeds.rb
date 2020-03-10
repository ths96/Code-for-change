require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all
Charity.destroy_all
User.destroy_all

url_user100 = "app/assets/images/taylor.jpg"
user100 = User.create!(email: 'taylorsheridan@gmail.com', password: 'test1234', name: 'Taylor Sheridan', location: 'London, UK', bio: 'I have just finished the Full-Stack Web Developer course at Le Wagon', linkedin_url: 'https://www.linkedin.com/in/taylorsheridan1/', github_url: 'https://github.com/ths96', coder: true)
user100.photo.attach(io: open(url_user100), filename: 'taylor_1')

url_user101 = "app/assets/images/kathryn.jpg"
user101 = User.create!(email: 'kathrynarmitage@gmail.com', password: 'test1234', name: 'Kathryn Armitage', location: 'London, UK', bio: 'I have just finished the Full-Stack Web Developer course at Le Wagon', linkedin_url: 'https://www.linkedin.com/in/kathryn-armitage-695727133/', github_url: 'https://github.com/KathrynArmitage', coder: true)
user101.photo.attach(io: open(url_user101), filename: 'kathryn_1')

url_user102 = "app/assets/images/iram.jpg"
user102 = User.create!(email: 'iramshehzadi@gmail.com', password: 'test1234', name: 'Iram Shehzadi', location: 'London, UK', bio: 'I have just finished the Full-Stack Web Developer course at Le Wagon', linkedin_url: 'https://www.linkedin.com/in/iram-shehzadi/', github_url: 'https://github.com/Iram193', coder: true)
user102.photo.attach(io: open(url_user102), filename: 'iram_1')

url_user103 = "app/assets/images/tom.jpg"
user103 = User.create!(email: 'tomharwood@gmail.com', password: 'test1234', name: 'Tom Harwood', location: 'Oxford, UK', bio: 'I have just finished the Full-Stack Web Developer course at Le Wagon', linkedin_url: 'https://www.linkedin.com/in/tom-harwood88/', github_url: 'https://github.com/tharwoodyy', coder: true)
user103.photo.attach(io: open(url_user103), filename: 'tom_1')

user1 = User.create!(email: 'tom@gmail.com', password: 'test1234')
charity1 = Charity.create!(name: 'Save the Turtles', description:'A conservation charity working to protect turtle nesting beaches, fund turtle rescue and rehabilitation and combat threats of pollution and turtle hunting. We want to conserve sea turtles by protecting their nesting beaches, halting both the targeted and accidental catch of turtles and supporting rescue centres around the world that return rehabilitated sea turtles to the wild.', location: 'Tulum, Mexico', user: user1)
turtles = Project.create!(name: 'Save the Turtles', category: 'Front-end', charity_description: 'A conservation charity working to protect turtle nesting beaches, fund turtle rescue and rehabilitation and combat threats of pollution and turtle hunting. We want to conserve sea turtles by protecting their nesting beaches, halting both the targeted and accidental catch of turtles and supporting rescue centres around the world that return rehabilitated sea turtles to the wild.', website: 'www.savetheturtles.org', location: 'Tulum, Mexico', project_description: 'Save the turtles is looking for a dedicated group of web delveopers to help us implement a payment funtion on our existing website. This will be instrumental in allowing us raise more money to support our cause.', deadline: '10/05/2020', charity: charity1)
url_turtle = "https://images.pexels.com/photos/1817048/pexels-photo-1817048.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
turtles.photo.attach(io: open(url_turtle), filename: 'turtle_1')
charity1.photo.attach(io: open(url_turtle), filename: 'turtle_1')
# Booking.create(user: user1, project: turtles, status: 'accepted')

user2 = User.create!(email: 'iram@gmail.com', password: 'test1234')
charity2 = Charity.create!(name: 'Gift of Time', description:'Making it easier for people to volunteer and give their time to worthy causes', location: 'London, UK', user: user2)
giving = Project.create!(name: 'Gift of Time', category: 'Full-stack', charity_description: 'Together we have the power to transform lives. For 37 years Gift of Time has helped people volunteer and work with the those in our society that need it most', website: 'www.lifeofgiving.org', location: 'London, UK', project_description: 'We need a full website rebuild, this will include a home page, a page to browse our projects, a donation page, a fully-responsive footer and header with links to articles etc.', deadline: '13/07/2020', charity: charity2)
url_giving = "https://images.pexels.com/photos/2346558/pexels-photo-2346558.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
giving.photo.attach(io: open(url_giving), filename: 'giving_1')
charity2.photo.attach(io: open(url_giving), filename: 'giving_1')
# Booking.create(user: user2, project: turtles, status: 'accepted')


user3 = User.create!(email: 'taylor@gmail.com', password: 'test1234')
charity3 = Charity.create!(name: 'Justice League', description:'Fighting women injustice', location: 'New York, USA', user: user3)
justice = Project.create!(name: 'Justice for Women', category: 'Back-end', charity_description: 'Over a quarter of a million women die each year from largely preventable causes related to pregnancy and childbirth. On average, greater numbers of women and girls die during and after natural disasters than men, and in situations of conflict or political unrest they are extremely vulnerable to sexual violence. Help Justice for women empower both women and girls', website: 'www.justiceleague.org', location: 'New York, USA', project_description: 'Our website crashes when we add new cases, need a group of coders to help sort this bug out', deadline: '01/04/2020', charity: charity3)
url_justice = "https://images.theconversation.com/files/174760/original/file-20170620-32329-qvf3j6.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip"
justice.photo.attach(io: open(url_justice), filename: 'justice_1')
charity3.photo.attach(io: open(url_justice), filename: 'justice_1')
# Booking.create(user: user3, project: turtles, status: 'accepted')


user4 = User.create!(email: 'kathryn@gmail.com', password: 'test1234')
charity4 = Charity.create!(name: 'Tree Planter', description:'Planting Trees to support the welfare of the environment and animals', location: 'Manaus, Brazil', user: user4)
trees = Project.create!(name: 'Tree Planter', category: 'Full-stack', charity_description: 'Here at tree planter we are trying to combat the effects of globale warming by planting more trees. We get stuck in with local communities to cultivate lasting change in their neighbourhoods – whether it’s revitalising forgotten spaces, creating healthier environments or getting people excited about growing, foraging and eating healthy food.', website: 'www.treeplanter.org', location: 'Manaus, Brazil', project_description: 'We would like to implement a map feature to keep track of our planting', deadline: '04/05/2020', charity: charity4)
url_trees = "https://images.pexels.com/photos/1563604/pexels-photo-1563604.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"
trees.photo.attach(io: open(url_trees), filename: 'trees_1')
charity4.photo.attach(io: open(url_trees), filename: 'trees_1')
# Booking.create(user: user4, project: turtles, status: 'accepted')


user5 = User.create!(email: 'plastic@gmail.com', password: 'test1234')
charity5 = Charity.create!(name: 'Reduce All Plastic', description:'Promoting the use of less plastic', location: 'Berlin, Germany', user: user5)
plastic = Project.create!(name: 'Reduce All Plastic', category: 'Full-stack', charity_description: 'Recycle Rebuild empowers communities to recycle waste into affordable, high-quality building materials, whilst providing an immediate source of income for those affected by natural disasters.', website: 'www.reduceallplastic.org', location: 'Berlin, Germany', project_description: 'We would like a chat function for our collaborators', deadline: '23/08/2020', charity: charity5)
url_plastic = "https://pbs.twimg.com/profile_images/1160224493266186240/uEjGefD4_400x400.jpg"
plastic.photo.attach(io: open(url_plastic), filename: 'plastic_1')
# Booking.create(user: user5, project: turtles, status: 'accepted')

user6 = User.create!(email: 'arnie@gmail.com', password: 'test1234')
charity6 = Charity.create!(name: 'Stranded Saver', description:'Saving people at sea', location: 'Torquay, UK', user: user6)
saver = Project.create!(name: 'Stranded Saver', category: 'Front-end', charity_description: 'Saving people at sea', website: 'www.strandedsaver.org', location: 'Torquay, UK', project_description: 'We want to make our donation page more appealing', deadline: '10/05/2020', charity: charity6)
url_saver = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Air-sea-rescue-falmouth.jpg/1200px-Air-sea-rescue-falmouth.jpg"
saver.photo.attach(io: open(url_saver), filename: 'saver_1')
# Booking.create(user: user6, project: turtles, status: 'accepted')

user7 = User.create!(email: 'bernie@gmail.com', password: 'test1234')
charity7 = Charity.create!(name: 'Castle Heritage', description:'Maintaining old castles in France', location: 'Reims, France', user: user7)
castle = Project.create!(name: 'Castle Heritage', category: 'Full-stack', charity_description: 'Maintaining old castles in France', website: 'www.castleheritage.org', location: 'Reims, France', project_description: 'We would like members to be able to upload and display photos', deadline: '01/06/2020', charity: charity7)
url_castle = "https://cdn.theculturetrip.com/wp-content/uploads/2016/04/800px-mont_st_michel_3_brittany_france_-_july_2011-650x461.jpg"
castle.photo.attach(io: open(url_castle), filename: 'castle_1')
# Booking.create(user: user7, project: turtles, status: 'accepted')

user8 = User.create!(email: 'pete@gmail.com', password: 'test1234')
charity8 = Charity.create!(name: 'Water for All', description:'Creating sustainable water sources', location: 'Addis Ababa, Ethiopia', user: user8)
water = Project.create!(name: 'Water for All', category: 'Front-end', charity_description: 'Creating sustainable water sources', website: 'www.waterforall.org', location: 'Addis Ababa, Ethiopia', project_description: 'Our sign up page needs a revamp', deadline: '09/09/2020', charity: charity8)
url_water = "https://images.pexels.com/photos/68262/pexels-photo-68262.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
water.photo.attach(io: open(url_water), filename: 'water_1')
# Booking.create(user: user8, project: turtles, status: 'accepted')

user9 = User.create!(email: 'elizabeth@gmail.com', password: 'test1234')
charity9 = Charity.create!(name: 'Get Physical', description:'Helping people get fit and stay healthy', location: 'Bristol, UK', user: user9)
physical = Project.create!(name: 'Get Physical', category: 'Full-Stack', charity_description: 'Helping people get fit and stay healthy', website: 'www.getphysical.org', location: 'Bristol, UK', project_description: 'We are a new charity and are looking for help setting up our whole website.', deadline: '02/09/2020', charity: charity9)
url_physical = "https://images.pexels.com/photos/2526878/pexels-photo-2526878.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
physical.photo.attach(io: open(url_physical), filename: 'physical_1')
# Booking.create(user: user9, project: physical, status: 'accepted')

user10 = User.create!(email: 'ben@gmail.com', password: 'test1234')
charity10 = Charity.create!(name: 'Mental Health Awareness', description:'Our aim is to increase awareness of Mental Health', location: 'Los Angeles, USA', user: user10)
mental = Project.create!(name: 'Mental Health Awareness', category: 'Back-end', charity_description: 'Our aim is to increase awareness of Mental Health', website: 'www.mentalhealthawareness.org', location: 'Los Angeles, USA', project_description: 'We are having problems with using our database of users, we would like easier ways to use the data.', deadline: '14/07/2020', charity: charity10)
url_mental = "https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
mental.photo.attach(io: open(url_mental), filename: 'mental_1')
# Booking.create(user: user10, project: mental, status: 'accepted')

user11 = User.create!(email: 'james@gmail.com', password: 'test1234')
charity11 = Charity.create!(name: 'Forest Fire Prevention', description:'We work with local authorities to decrease the chances of devastating forest fires', location: 'Sydney, Australia', user: user11)
fire = Project.create!(name: 'Forest Fire Prevention', category: 'Front-end', charity_description: 'We work with local authorities to decrease the chances of devastating forest fires', website: 'www.forestfireprevention.org', location: 'Sydney, Australia', project_description: 'We would like a redesign of our home page to make sure the critical information is more visible to the user.', deadline: '19/05/2020', charity: charity11)
url_fire = "https://images.pexels.com/photos/1365427/pexels-photo-1365427.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
fire.photo.attach(io: open(url_fire), filename: 'fire_1')
# Booking.create(user: user11, project: fire, status: 'accepted')

user12 = User.create!(email: 'gemma@gmail.com', password: 'test1234')
charity12 = Charity.create!(name: 'Action on Piracy', description:'Helping the victims of Piracy, and working to stop the issue at the source', location: 'Gibralta, UK', user: user12)
piracy = Project.create!(name: 'Action on Piracy', category: 'Back-end', charity_description: 'Helping the victims of Piracy, and working to stop the issue at the source', website: 'www.actiononpiracy.org', location: 'Gibralta, UK', project_description: 'We want to implement a map function to help log the location of our recent activities.', deadline: '01/05/2020', charity: charity12)
url_piracy = "https://images.pexels.com/photos/799091/pexels-photo-799091.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
piracy.photo.attach(io: open(url_piracy), filename: 'piracy_1')
# Booking.create(user: user12, project: piracy, status: 'accepted')

user13 = User.create!(email: 'andrew@gmail.com', password: 'test1234')
charity13 = Charity.create!(name: 'Flood UK', description:'Assisting people in dealing with the before, during, and after-effects of flooding in the UK', location: 'Doncaster, UK', user: user13)
flood = Project.create!(name: 'Flood UK', category: 'Full-Stack', charity_description: 'Assisting people in dealing with the before, during, and after-effects of flooding in the UK', website: 'www.flood.co.uk', location: 'Doncaster, UK', project_description: 'We would like to implement a chat function, as well as being able to push notifications to our users.', deadline: '02/09/2020', charity: charity13)
url_flood = "https://images.pexels.com/photos/459451/pexels-photo-459451.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
flood.photo.attach(io: open(url_flood), filename: 'flood_1')
# Booking.create(user: user13, project: flood, status: 'accepted')

user14 = User.create!(email: 'karen@gmail.com', password: 'test1234')
charity14 = Charity.create!(name: 'Equality for Women Europe', description:'Working to ensure the equality of rights for Women across Europe, at work and at home', location: 'Geneva, Switzerland', user: user14)
women = Project.create!(name: 'Equality for Women Europe', category: 'Front-end', charity_description: 'Working to ensure the equality of rights for Women across Europe, at work and at home', website: 'www.equalityforwomen.eu', location: 'Geneva, Switzerland', project_description: 'Our website overall needs a lot of design work, we currently only have basic html/css and want to offer our users a better experience.', deadline: '07/05/2020', charity: charity14)
url_women = "https://images.pexels.com/photos/1564149/pexels-photo-1564149.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
women.photo.attach(io: open(url_women), filename: 'women_1')
# Booking.create(user: user14, project: women, status: 'accepted')

user15 = User.create!(email: 'sarah@gmail.com', password: 'test1234')
charity15 = Charity.create!(name: 'Pet Shelter', description:'Rescuing stray and mis-treated animals across the country, providing shelter and rehoming opportunities', location: 'Manchester, UK', user: user15)
pets = Project.create!(name: 'Pet Shelter', category: 'Back-end', charity_description: 'Rescuing stray and mis-treated animals across the country, providing shelter and rehoming opportunities', website: 'www.petshelter.org', location: 'Manchester, UK', project_description: 'We need to review the permissions on our website, looking to implement better access for admins and restrict the pages users can view.', deadline: '01/08/2020', charity: charity15)
url_pets = "https://images.pexels.com/photos/1904103/pexels-photo-1904103.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
pets.photo.attach(io: open(url_pets), filename: 'pets_1')
# Booking.create(user: user15, project: shelter, status: 'accepted')

user16 = User.create!(email: 'justin@gmail.com', password: 'test1234')
charity16 = Charity.create!(name: 'Action Canada', description:'Tackling homelessness across Canada, working to provide houses and jobs to those in need', location: 'Toronto, Canada', user: user16)
canada = Project.create!(name: 'Action Canada', category: 'Full-Stack', charity_description: 'Tackling homelessness across Canada, working to provide houses and jobs to those in need', website: 'www.actioncanada.org', location: 'Toronto, Canada', project_description: 'We would like to rebuild our website from scratch on the Ruby on Rails framework, it is not a huge website so any help would be much appreciated.', deadline: '09/06/2020', charity: charity16)
url_canada = "https://images.pexels.com/photos/374870/pexels-photo-374870.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
canada.photo.attach(io: open(url_canada), filename: 'canada_1')
# Booking.create(user: user16, project: canada, status: 'accepted')

user17 = User.create!(email: 'drjones@gmail.com', password: 'test1234')
charity17 = Charity.create!(name: 'Disease Research', description:'Our scientists work to find cures/treatments to existing and new conditions all over the globe', location: 'Tokyo, Japan', user: user17)
disease = Project.create!(name: 'Disease Research', category: 'Front-end', charity_description: 'Our scientists work to find cures/treatments to existing and new conditions all over the globe', website: 'www.diseaseresearch.org', location: 'Tokyo, Japan', project_description: 'We have a lot of new imagery we would like to use on our website but are unsure of how to utilize them.', deadline: '29/05/2020', charity: charity17)
url_disease = "https://images.pexels.com/photos/954583/pexels-photo-954583.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
disease.photo.attach(io: open(url_disease), filename: 'disease_1')
# Booking.create(user: user17, project: disease, status: 'accepted')

user18 = User.create!(email: 'david@gmail.com', password: 'test1234')
charity18 = Charity.create!(name: 'Ocean Watch', description:'We monitor the oceans across the globe, monitoring sea levels, tsunami risks, and temperatures', location: 'Cape Town, South Africa', user: user18)
ocean = Project.create!(name: 'Ocean Watch', category: 'Back-end', charity_description: 'We monitor the oceans across the globe, monitoring sea levels, tsunami risks, and temperatures', website: 'www.diseaseresearch.org', location: 'Cape Town, South Africa', project_description: 'Our website is functional, but we would like to add some Javascript effects to make the experience more polished. We also use the Rails framework', deadline: '21/04/2020', charity: charity18)
url_ocean = "https://images.pexels.com/photos/1656579/pexels-photo-1656579.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
ocean.photo.attach(io: open(url_ocean), filename: 'ocean_1')
# Booking.create(user: user18, project: ocean, status: 'accepted')

Project.update_all(trello_token: 'b153769fd2f464911b007433e6544b24e97abff447de7845960a34380647b2f5')

Project.all.each_with_index do |project, index|
	f = open('https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf')
	project.file.attach(io: f, filename: "dummy-#{index}")
end
