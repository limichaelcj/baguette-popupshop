puts "Seeding database..."
puts "  Seeding users..."
bianca = User.create(name: 'Bianca', email: 'bianca_kann@gmail.com', password: "123456", is_host: false)
sonja = User.create(name: 'Sonja', email: 'sonjaharoldsondesigns@gmail.com', password: "123456", is_host: false)
luz = User.create(name: 'Luz', email: 'lmc580@nyu.edu', password: "123456", is_host: false)
jordan = User.create(name: 'Jordan', email: "jordan@gmail.com", password: "123456", is_host: false)

sam = User.create(name: 'Sam', email: "sam@gmail.com", password: "123456", is_host: true)
mike = User.create(name: 'Mike', email: "mike@gmail.com", password: "123456", is_host: true)

puts "  Seeding venues..."

blue_bottle = Venue.new(
  name: 'Blue Bottle',
  address: '16 Villa Gaudelet, Paris',
  price: 1000,
  medium: "Painting",
  style: "Pop Art",
  host: sam,
  description: "We are located in the alley of Paris center south side. We have a plain white wall to display art pritns.",
  remote_photo_url: "http://schemata.jp/wordpress/wp-content/uploads/02_BBCA_108_DC90142_pre_small.jpg"
)
blue_bottle.save

glitch = Venue.new(
  name: 'Glitch',
  address: '106 Rue de Turenne, 75003 Paris, France',
  price: 2000,
  medium: "Ceremics",
  style: "Naturalism",
  host: sam,
  description: "We are part of the Japanese coffee culture, and we would like to show great respect to the craftmanship.",
  remote_photo_url: "https://thecupandtheroad.files.wordpress.com/2016/05/glitch-coffee-1090304.jpg",
)
glitch.save

streamer = Venue.new(
  name: 'Streamer',
  address: '68 Rue de Grenelle, 75007 Paris, France',
  price: 1500,
  medium: "Drawing",
  style: "Cubism",
  host: mike,
  description: "We do Cold Brew, developed our own Nitro, and we are looking for colorful and fun illustrations to display in our store.",
  remote_photo_url: "https://en.goodcoffee.me/cms/wp-content/uploads/streamer-nakameguro-2.jpg"
)
streamer.save

underground = Venue.new(
  name: 'Underground',
  address: "13 Rue d'Ormesson, 75004 Paris, France",
  price: 500,
  medium: "Installation",
  style: "Pixel Art",
  host: sam,
  description: "We are a new and uprising art gallery located in the center of Paris. We want to promote young and local artists to kickstart their careers.",
  remote_photo_url: "https://suitcasemag.com/wp-content/uploads/2017/12/paris-art-underground.jpg"
)
underground.save

atelier = Venue.new(
  name: 'Atelier A',
  address: '83 Rue de la Tombe Issoire, 75014 Paris, France',
  price: 3000,
  medium: "Sculpture",
  style: "Cubism",
  host: mike,
  description: "A former factory on Paris’ southern outskirts was the home and workplace of artist, writer and designer François Arnal until his passing in 2012.",
  remote_photo_url: "https://thespaces.com/wp-content/uploads/2016/12/Parisian-factory-home-of-Franc%CC%A7ois-Arnal-.jpg"
)
atelier.save

lost_bakery = Venue.new(
  name: 'Lost Bakery',
  address: '16 Avenue René Coty, 75014 Paris, France',
  price: 800,
  medium: "Performance Art",
  style: "Minimalism",
  host: mike,
  description: "We are the locals favorite bakery shop in Paris, and we are looking for local amuetur artists to showcase their creations. We have a large, rustic wooden tables fill the space, while potted plants and stylish ceramic vases decorate the walls.",
  remote_photo_url: "http://www.thatsmags.com/image/view/201609/lost-bakery-shanghai-1-2.jpg"
)
lost_bakery.save

mike_antique = Venue.new(
  name: "Mike's Antique",
  address: '134 Rue du Faubourg Saint-Honoré, 75008 Paris, France',
  price: 900,
  medium: "Painting",
  style: "Cubism",
  host: mike,
  description: "Mike Antique has been at the heart of Paris for 70 years. We have historical furnitures and plates from the Renessiance to the modern day. We are looking to connect with artists who paints and share the love of cubism.",
  remote_photo_url: "https://images.unsplash.com/photo-1460776960860-7adc30a4e69d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ae6b565a5473928ea489565830021d1&auto=format&fit=crop&w=1934&q=80"
)
mike_antique.save

puts "  Seeding events..."
Event.create(venue: mike_antique, artist: bianca, date: "2018-11-17")
Event.create(venue: mike_antique, artist: sonja, date: "2018-11-21")
Event.create(venue: mike_antique, artist: luz, date: "2018-11-27")

puts "Seeding complete."
