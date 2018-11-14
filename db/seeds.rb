# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding database..."

User.create(name: 'Bianca', email: 'bianca_kann@gmail.com', password: "123456", is_host: false)
User.create(name: 'Sonja', email: 'sonjaharoldsondesigns@gmail.com', password: "123456", is_host: false)
User.create(name: 'Luz', email: 'lmc580@nyu.edu', password: "123456", is_host: false)

sam = User.create(name: 'Sam', email: "sam@gmail.com", password: "123456", is_host: true)
jordan = User.create(name: 'Jordan', email: "joradn@gmail.com", password: "123456", is_host: true)
mike = User.create(name: 'Mike', email: "mike@gmail.com", password: "123456", is_host: true)

url_boom = "https://notjustavisitor.com/wp-content/gallery/201578/dynamic/DSC00906.JPG-nggid0529495-ngg0dyn-0x0x100-00f0w010c010r110f110r010t010.JPG"
boom = Venue.new(name: 'Boom', address: '16 Villa Gaudelet, Paris', price: 1000, host: sam)
boom.description = "Hidden in the alley of Taipei City center south side, great ambiance and great coffee taste! reasonable price with comfortable dcor, I personally love their handmade desserts"
boom.remote_photo_url = url_boom
boom.save

url_glitch = "http://331mrnu3ylm2k3db3s1xd1hg-wpengine.netdna-ssl.com/wp-content/uploads/2015/05/Sprudge-GlitchCoffee-HengteeLim-IMG_6127-740x416.jpg"
glitch = Venue.new(name: 'Glitch', address: '106 Rue de Turenne, 75003 Paris, France', price: 2000, host: jordan)
glitch.description = "We provide a cup of Value by strictly focusing on not only roasting and brewing, but also cultivation, purification and farm.
Our coffee expresses the character of single origin bean by super light roasting and V60 pour over.
As matter of fact, Japanese coffee culture has a long history of pour over serving and we would like to show great respect to the craftmanship."
glitch.remote_photo_url = url_glitch
glitch.save

url_streamer = "https://en.goodcoffee.me/cms/wp-content/uploads/streamer-nakameguro-2.jpg"
streamer = Venue.new(name: 'Streamer', address: '68 Rue de Grenelle, 75007 Paris, France', price: 1500, host: mike)
streamer.description = "Yes, we do Cold Brew, we 've developed our own Nitro, we hand drip, aero press, and pull shots off custom-tuned supercharged espresso machines each and every day. We do all these quite well, but when it comes to our Meticulously drawn with just a stream of milk pitched directly onto a canvas of espresso, Free pour is the pinnacle of all barista techniques, and interestingly said 'the effect of beauty on taste'."
streamer.remote_photo_url = url_streamer
streamer.save

puts "Seeding complete."
