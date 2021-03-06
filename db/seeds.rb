# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Booking.destroy_all
Tour.destroy_all
Review.destroy_all
Category.destroy_all

require "faker"


puts "create user"
# Guides
quoc = User.new(email: "q@email.com", password: "12345678", guide: true, first_name: "Quoc", last_name: "Bui", \
birthday: "1990-11-02", photo: "", street: "Vondelparklaan 22", zipcode: "1234 AB", city: "Amsterdam", \
phone:"+31 6 1234 5678", bio: "Software consultant, blogger and I'm a passionate foodie originally from Vietnam. ", hour_rate: 10, rating: 3, available_hours: Faker::Number.between(1, 48))
quoc[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459254858/q_xctupa.jpg"
quoc.save!

blane = User.new(email: "blane@email.com", password: "12345678", guide: true, first_name: "Blane", last_name: "Amatsardji", \
birthday: "1992-05-21", photo: "", street: "De pijp 100", zipcode: "1234 AB", city: "Amsterdam", \
phone:"+31 6 1234 5678", bio: "Hacker, shopping guru and working as an actor, I traveled all over the world. ", hour_rate: 15, rating: 4, available_hours: Faker::Number.between(1, 48))
blane[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459497845/blane-2_qecnie.jpg"
blane.save!

sjors = User.new(email: "sjors@email.com", password: "12345678", guide: true, first_name: "Sjors", last_name: Faker::Name.last_name, \
birthday: "2000-01-01", photo: "http://res.cloudinary.com/timthuis/image/upload/v1459235351/guide_1_nb6izt.jpg", street: Faker::Address.street_address, zipcode: Faker::Address.zip_code, city: Faker::Address.city_prefix, \
phone:Faker::PhoneNumber.cell_phone, bio: "Iconoclastic. Polyamorous. GitHubber. I say we take off and nuke the patriarchy from orbit. It’s the only way to be sure.", hour_rate: Faker::Number.between(6, 20), rating: Faker::Number.between(1, 5), available_hours: Faker::Number.between(1, 48))
sjors[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459235351/guide_6_jvdhqo.jpg"
sjors.save!

kim = User.new(email: "Kim@email.com", password: "12345678", guide: true, first_name: "Kim", last_name: Faker::Name.last_name, \
birthday: "2000-01-01", street: Faker::Address.street_address, zipcode: Faker::Address.zip_code, city: Faker::Address.city_prefix, \
phone:Faker::PhoneNumber.cell_phone, bio: "Hello I am Kim, Born and raised in the Amsterdam would love to show around.", hour_rate: Faker::Number.between(6, 20), rating: Faker::Number.between(1, 5), available_hours: Faker::Number.between(1, 48))
kim[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459497482/nina_jfgx7j.jpg"
kim.save!

angel = User.new(email: "Angel@email.com", password: "12345678", guide: true, first_name: "Angel", last_name: Faker::Name.last_name, \
birthday: "2000-01-01", photo: "http://res.cloudinary.com/timthuis/image/upload/v1459235351/guide_1_nb6izt.jpg", street: Faker::Address.street_address, zipcode: Faker::Address.zip_code, city: Faker::Address.city_prefix, \
phone:Faker::PhoneNumber.cell_phone, bio: "Chilli dogs & a good cup of tea. Mental Health advocate", hour_rate: Faker::Number.between(6, 20), rating: Faker::Number.between(1, 5), available_hours: Faker::Number.between(1, 48))
angel[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459497482/walid_pljkk2.jpg"
angel.save!

emma = User.new(email: "Emma@email.com", password: "12345678", guide: true, first_name: "Emma", last_name: Faker::Name.last_name, \
birthday: "2000-01-01", photo: "http://res.cloudinary.com/timthuis/image/upload/v1459235351/guide_1_nb6izt.jpg", street: Faker::Address.street_address, zipcode: Faker::Address.zip_code, city: Faker::Address.city_prefix, \
phone:Faker::PhoneNumber.cell_phone, bio: "Welcome to the Netherlands! My name is Emma, I am a certified guide who loves traveling and meeting people from all over the world. ", hour_rate: Faker::Number.between(6, 20), rating: 5, available_hours: Faker::Number.between(1, 48))
emma[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459235351/guide_1_nb6izt.jpg"
emma.save!

chantal = User.new(email: "Chantal@email.com", password: "12345678", guide: true, first_name: "Chantal", last_name: Faker::Name.last_name, \
birthday: "2000-01-01", photo: "http://res.cloudinary.com/timthuis/image/upload/v1459235351/guide_1_nb6izt.jpg", street: Faker::Address.street_address, zipcode: Faker::Address.zip_code, city: Faker::Address.city_prefix, \
phone:Faker::PhoneNumber.cell_phone, bio: "I have been working in tourism for more than five years now. The first two years I organised tours for the Dutch.", hour_rate: Faker::Number.between(6, 20), rating: 4, available_hours: Faker::Number.between(1, 48))
chantal[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459497482/bo_cmd4n9.jpg"
chantal.save!

sara = User.new(email: "Sara@email.com", password: "12345678", guide: true, first_name: "Sara", last_name: Faker::Name.last_name, \
birthday: "2000-01-01", photo: "http://res.cloudinary.com/timthuis/image/upload/v1459235351/guide_1_nb6izt.jpg", street: Faker::Address.street_address, zipcode: Faker::Address.zip_code, city: Faker::Address.city_prefix, \
phone:Faker::PhoneNumber.cell_phone, bio: "I am a personal guide offering tours in Amsterdam, showing you the must see attractions", hour_rate: Faker::Number.between(6, 20), rating: Faker::Number.between(1, 5), available_hours: Faker::Number.between(1, 48))
sara[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459497482/emma_kaepfl.jpg"
sara.save!

hendrik = User.new(email: "Hendrik@email.com", password: "12345678", guide: true, first_name: "Hendrik", last_name: Faker::Name.last_name, \
birthday: "2000-01-01", photo: "http://res.cloudinary.com/timthuis/image/upload/v1459235351/guide_1_nb6izt.jpg", street: Faker::Address.street_address, zipcode: Faker::Address.zip_code, city: Faker::Address.city_prefix, \
phone:Faker::PhoneNumber.cell_phone, bio: " You’ll be happy in new, exciting and important ways", hour_rate: Faker::Number.between(6, 20), rating: Faker::Number.between(1, 5), available_hours: Faker::Number.between(1, 48))
hendrik[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459497482/peter_hpy2o8.jpg"
hendrik.save!

peter = User.new(email: "Peter@email.com", password: "12345678", guide: true, first_name: "Peter", last_name: Faker::Name.last_name, \
birthday: "2000-01-01", photo: "http://res.cloudinary.com/timthuis/image/upload/v1459235351/guide_1_nb6izt.jpg", street: Faker::Address.street_address, zipcode: Faker::Address.zip_code, city: Faker::Address.city_prefix, \
phone:Faker::PhoneNumber.cell_phone, bio: "Foodie | Football | Ad Tech ", hour_rate: Faker::Number.between(6, 20), rating: Faker::Number.between(1, 5), available_hours: Faker::Number.between(1, 48))
peter[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459498163/beer_oqynck.jpg"
peter.save!


# Visitor
tim = User.new(email: "tim@email.com", password: "12345678", guide: false, first_name: "Tim", last_name: "Thuis", phone:"+31 6 1234 5678")
tim[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459497848/tim-2_n1n5pv.jpg"
tim.save!

andre = User.new(email: "andre@email.com", password: "12345678", guide: false, first_name: "Andre", last_name: "de Vries", phone:"+31 6 1234 5678", photo: "")
andre[:photo] = ""
andre.save!

jan = User.new(email: "jan@email.com", password: "12345678", guide: false, first_name: "jan", last_name: "de Vries", phone:"+31 6 1234 5678", photo: "")
jan[:photo] = ""
jan.save!

henk = User.new(email: "henk@email.com", password: "12345678", guide: false, first_name: "henk", last_name: "de Vries", phone:"+31 6 1234 5678", photo: "")
henk[:photo] = ""
henk.save!

henna = User.new(email: "henna@email.com", password: "12345678", guide: false, first_name: "henna", last_name: "de Vries", phone:"+31 6 1234 5678", photo: "")
henna[:photo] = ""
henna.save!

####

puts "create category"

sport = Category.create!(name: "Sport", description: "Feel like staying active during your periode in Amsterdam?")
sport[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459256332/sport-sm_bhgpwr.jpg"
sport.save!

party = Category.create!(name: "Party", description: "Searching for a amazing party with a great atmosphere among the locals?")
party[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459256331/party-sm_bm1gna.jpg"
party.save!

food = Category.create!(name: "Food", description: "Your guide can bring together the best places to eat out throughout Amsterdam.")
food[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459256331/food-sm_yzneke.jpg"
food.save!

bar = Category.create!(name: "Bar", description: "Bars, pubs and locals with drinks in Amsterdam")
bar[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459256331/drink-sm_jknrxx.jpg"
bar.save!

cultural = Category.create!(name: "Cultural", description: "Discover the hidden secrets culture of Amsterdam")
cultural[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459256331/shopping-sm_rxoym4.jpg"
cultural.save!

shopping = Category.create!(name: "Shopping", description: "The best places to hit the shops in Amsterdam")
shopping[:photo] = "http://res.cloudinary.com/timthuis/image/upload/v1459256331/cultural-sm_rtptu1.jpg"
shopping.save!


####

puts "create tour"

tour4 = Tour.create!(user: kim, category: cultural, description: "A walking tour tailored around your wants and needs! Visit historical places, like the Nieuwmarkt, Jewish quarter, Dam, narrow streets and attractive patios..")
tour5 = Tour.create!(user: sara, category: cultural, description: "Let the history of Amsterdam be revealed to you in this informative and imaginative guided city walk through Amsterdam's historical city centre.")
tour6 = Tour.create!(user: sara, category: sport, description: "An active or tranquil biking tour through Amsterdam’s city centre, by bike everything is possible!")
tour7 = Tour.create!(user: hendrik, category: party, description: "Arrange your trip in advance and start your stay in Amsterdam without stress. Avoid long taxi lines. Enjoy the ride to your Hotel.")
tour8 = Tour.create!(user: peter, category: sport, description: "Yellow Bike has put together a safely guided bicycle tour which will give you a fascinating picture of this famous canal city’s rich history.")
tour9 = Tour.create!(user: emma, category: food, description: "A special experience: Enjoy an extensive four course dinner aboard a canal boat.")
tour10 = Tour.create!(user: peter, category: cultural, description: "A wonderful puzzle game for international guests in Amsterdam.")
tour11 = Tour.create!(user: emma, category: cultural, description: "The eastern harbour area: a wonderful place for a walk. Great, modern architecture in a historical environment.")
tour12 = Tour.create!(user: quoc, category: bar, description: "Café and bars walking tour through Amsterdam. Always a private tour with your guide and visit of three typical bars in the old town.")
tour13 = Tour.create!(user: chantal, category: food, description: "Instead of spending the evening in only one restaurant, we will guide you to three different places - one each for the starter, the main course and the dessert.")
tour14 = Tour.create!(user: angel, category: shopping, description: "We will take you through the city of Amsterdam and show you the main sights on this sightseeing tour by bus.")
tour15 = Tour.create!(user: blane, category: bar, description: "Visit the Hard Rock Cafe in Amsterdam and be impressed by the unique atmosphere")
tour16 = Tour.create!(user: angel, category: cultural, description: "I would love to tailor this tour to your personal interests")
tour17 = Tour.create!(user: sjors, category: cultural, description: "Private City Tour by day or by night for very affordable price! The new and fun way to explore Amsterdam on board of an eco-friendly electric tuk tuk.")
tour18 = Tour.create!(user: hendrik, category: sport, description: "A two-hour personalised museum tour to learn all that you can about the great master. Be ready to explore colour, movement and a turbulent life trajectory")
tour19 = Tour.create!(user: hendrik, category: cultural, description: "It awaits you an exciting private museum tour by an art historian including the Stedelijk Museum and Van Gogh Museum in Amsterdam.")
tour20 = Tour.create!(user: sjors, category: shopping, description: "On this tour you will discover various windmills, dutch cheese, clogs as well as the wonderful landscape around Amsterdam.")
tour21 = Tour.create!(user: quoc, category: party, description: "Private charters including skipper for small groups and individual guests.")
tour22 = Tour.create!(user: quoc, category: cultural, description: "Choose one or more art museums in Amsterdam and visit them with your own private art historian.")
tour23 = Tour.create!(user: hendrik, category: food, description: "Plan your tour with your professional tour guide around the sights you wish to see. Find out about approximate duration and possibility of lunch/coffee break.")
tour24 = Tour.create!(user: blane, category: cultural, description: "Unforgettable full day excursion. Get to know their highlights and a good feeling of both cities. Join the fun!")
tour25 = Tour.create!(user: kim, category: party, description: "Sightseeing in the clubs is one of the favorite things that visitors from all around the world do.")
tour26 = Tour.create!(user: emma, category: shopping, description: "Shop high-fashion style in the absolute trendiest boutiques in Amsterdam. Experience the hottest trends of the season first-hand.")
tour27 = Tour.create!(user: sara, category: shopping, description: "Shop in unique boutiques known only by the hippest Amsterdam Lady.")

####

puts "create booking"

booking1 = Booking.create!(visitor: tim, guide: sara, tour: tour23, date:"Tue, 10 Feb 2016", check_in:"2016-02-10 16:30:00 UTC", check_out:"2016-02-10 21:00:00 UTC", status:"confirm", total_price: 52.5, hour_rate: 15)
booking2 = Booking.create!(visitor: tim, guide: peter, tour: tour12, date:"Tue, 3 Mar 2016", check_in:"2016-01-01 10:00:00 UTC", check_out:"2016-01-01 15:00:00", status:"cancel", total_price: 30, hour_rate: 6)
booking4 = Booking.create!(visitor: tim, guide: sjors, tour: tour20, date:"Tue, 28 Jan 2016", check_in:"2016-03-17 21:00:00 UTC", check_out:"2016-03-17 23:00:00 UTC", status:"confirm", total_price: 20, hour_rate: 10)
# booking3 = Booking.create!(visitor: tim, guide: chantal, tour: tour13, date:"Tue, 01 Jan 2016", check_in:"2016-01-04 07:00:00 UTC", check_out:"2016-01-04 9:00:00 UTC", status:"confirm", total_price: 0, hour_rate: 15)
# booking5 = Booking.create!(visitor: tim, guide: quoc, tour: tour21, date:"Tue, 01 Jan 2016", check_in:"2016-01-04 07:00:00 UTC", check_out:"2016-01-04 9:00:00 UTC", status:"pending", total_price: 0, hour_rate: 15)
# booking6 = Booking.create!(visitor: tim, guide: quoc, tour: tour22, date:"Tue, 01 Jan 2016", check_in:"2016-01-04 07:00:00 UTC", check_out:"2016-01-04 9:00:00 UTC", status:"cancel", total_price: 0, hour_rate: 15)

booking7 = Booking.create!(visitor: andre, guide: emma, tour: tour9, date:"Tue, 01 Jan 2016", check_in:"2016-01-04 07:00:00 UTC", check_out:"2016-01-04 9:00:00 UTC", status:"cancel", total_price: 30, hour_rate: 15)
booking8 = Booking.create!(visitor: jan, guide: emma, tour: tour11, date:"Tue, 01 Jan 2016", check_in:"2016-01-04 07:00:00 UTC", check_out:"2016-01-04 9:00:00 UTC", status:"cancel", total_price: 30, hour_rate: 15)
booking9 = Booking.create!(visitor: henk, guide: emma, tour: tour11, date:"Tue, 01 Jan 2016", check_in:"2016-01-04 07:00:00 UTC", check_out:"2016-01-04 9:00:00 UTC", status:"cancel", total_price: 30, hour_rate: 15)
booking10 = Booking.create!(visitor: henna, guide: emma, tour: tour26, date:"Tue, 01 Jan 2016", check_in:"2016-01-04 07:00:00 UTC", check_out:"2016-01-04 9:00:00 UTC", status:"cancel", total_price: 30, hour_rate: 15)
####

puts "create review"

# first_review = Review.create!(booking: booking1 ,content: "First review of Q", rating: 5)
# second_review = Review.create!(booking: booking2 ,content: "Second review of Q", rating: 5)
# thirth_review = Review.create!(booking: booking3 ,content: "First review of Blane", rating: 5)
# fourth_review = Review.create!(booking: booking4 ,content: "Second review of Blane", rating: 5)

# Review Emma 9 / 11 / 26

r1e = Review.create!(booking: booking7 ,content: "Lovely lady,fantastic tour great knowledge of Amsterdam. Will definately use local guides ", rating: 4)
r2e = Review.create!(booking: booking8 ,content: "Emma was the perfect guide for us. The pre-arrival communication set the tone and allowed her to make the most of our short time in Amsterdam. She was on-time and ready with tickets.", rating: 5)
r3e = Review.create!(booking: booking9 ,content: "Awesome tour....would do again. We took a tour from Emma in 2011 and liked it so much, we used him again when we were in Amsterdam again.", rating: 3)
r4e = Review.create!(booking: booking10 ,content: "Emma met us on a gloomy day in Amsterdam, but for the next 4 hrs we were filled with pleasure and delight as we went on a special walk through Amsterdam.", rating: 5)

####

puts "users, bookings, tours, reviews, categories created!"


#
