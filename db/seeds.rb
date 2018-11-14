# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding database..."

bianca = User.create(name: 'Bianca', email: 'bianca_kann@gmail.com', password: "123456", is_host: false)
sonja = User.create(name: 'Sonja', email: 'sonjaharoldsondesigns@gmail.com', password: "123456", is_host: false)
luz = User.create(name: 'Luz', email: 'lmc580@nyu.edu', password: "123456", is_host: false)

sam = User.create(name: 'Sam', email: "sam@gmail.com", password: "123456", is_host: true)
jordan = User.create(name: 'Jordan', email: "jordan@gmail.com", password: "123456", is_host: true)
mike = User.create(name: 'Mike', email: "mike@gmail.com", password: "123456", is_host: true)

url_blue_bottle = "http://schemata.jp/wordpress/wp-content/uploads/02_BBCA_108_DC90142_pre_small.jpg"
blue_bottle = Venue.new(name: 'Blue Bottle', address: '16 Villa Gaudelet, Paris', price: 1000, host: sam)
blue_bottle.description = "Modern black and white Photography <br />We are located in the alley of Paris center south side. We have a plain white wall to display art pritns."
blue_bottle.remote_photo_url = url_blue_bottle
blue_bottle.save

url_glitch = "https://thecupandtheroad.files.wordpress.com/2016/05/glitch-coffee-1090304.jpg"
glitch = Venue.new(name: 'Glitch', address: '106 Rue de Turenne, 75003 Paris, France', price: 2000, host: jordan)
glitch.description = "Japanese Ceremics Art <br />We are part of the Japanese coffee culture, and we would like to show great respect to the craftmanship."
glitch.remote_photo_url = url_glitch
glitch.save

url_streamer = "https://en.goodcoffee.me/cms/wp-content/uploads/streamer-nakameguro-2.jpg"
streamer = Venue.new(name: 'Streamer', address: '68 Rue de Grenelle, 75007 Paris, France', price: 1500, host: mike)
streamer.description = "Illustration <br />We do Cold Brew, developed our own Nitro, and we are looking for colorful and fun illustrations to display in our store."
streamer.remote_photo_url = url_streamer
streamer.save

url_underground = "https://suitcasemag.com/wp-content/uploads/2017/12/paris-art-underground.jpg"
underground = Venue.new(name: 'Underground', address: "13 Rue d'Ormesson, 75004 Paris, France", price: 500, host: sam)
underground.description = "Graffiti Art and Installation Art <br />We are a new and uprising art gallery located in the center of Paris. We want to promote young and local artists to kickstart their careers."
underground.remote_photo_url = url_underground
underground.save

url_atelier = "https://thespaces.com/wp-content/uploads/2016/12/Parisian-factory-home-of-Franc%CC%A7ois-Arnal-.jpg"
atelier = Venue.new(name: 'Atelier A', address: '83 Rue de la Tombe Issoire, 75014 Paris, France', price: 3000, host: jordan)
atelier.description = " Metalwork Art <br />A former factory on Paris’ southern outskirts was the home and workplace of artist, writer and designer François Arnal until his passing in 2012."
atelier.remote_photo_url = url_atelier
atelier.save

url_lost_bakery = "http://www.thatsmags.com/image/view/201609/lost-bakery-shanghai-1-2.jpg"
lost_bakery = Venue.new(name: 'Lost Bakery', address: '16 Avenue René Coty, 75014 Paris, France', price: 800, host: mike)
lost_bakery.description = "Pop Art <br />We are the locals favorite bakery shop in Paris, and we are looking for local amuetur artists to showcase their creations. We have a large, rustic wooden tables fill the space, while potted plants and stylish ceramic vases decorate the walls."
lost_bakery.remote_photo_url = url_lost_bakery
lost_bakery.save

Event.create(venue: atelier, artist: bianca, date: "2018-11-17")
Event.create(venue: atelier, artist: sonja, date: "2018-11-21")
Event.create(venue: atelier, artist: luz, date: "2018-11-30")

puts "Seeding complete."
