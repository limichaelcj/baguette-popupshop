# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Bianca', email: 'bianca_kann@gmail.com')
User.create(name: 'Sonja', email: 'sonjaharoldsondesigns@gmail.com')
User.create(name: 'Luz', email: 'lmc580@nyu.edu')

url_boom = "https://notjustavisitor.com/wp-content/gallery/201578/dynamic/DSC00906.JPG-nggid0529495-ngg0dyn-0x0x100-00f0w010c010r110f110r010t010.JPG"
boom = Venue.create(name: 'Boom', address: 'Taipei', price: 1000, user_id: 1)
boom.remote_photo_url = url_boom
boom.save

url_glitch = "http://331mrnu3ylm2k3db3s1xd1hg-wpengine.netdna-ssl.com/wp-content/uploads/2015/05/Sprudge-GlitchCoffee-HengteeLim-IMG_6127-740x416.jpg"
glitch = Venue.create(name: 'Glitch', address: 'Tokyo', price: 2000, user_id: 2)
glitch.remote_photo_url = url_glitch
glitch.save
