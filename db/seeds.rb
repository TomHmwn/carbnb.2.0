# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clearing old data
puts "Clearing out old data"
User.destroy_all
Car.destroy_all


puts "Creating users"
new_user = User.new(first_name:"John", last_name:"Doe", email:"johndoe@gmail.com", password:"password")
new_user.photo.attach(io: URI.open('https://source.unsplash.com/random/300x300/?avatar'), filename: 'john_doe.jpg', content_type: 'image/png')
new_user.save!
5.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email # "#{first_name}#{last_name}@gmail.com"
  password = "123456"
  new_user.photo.attach(io: URI.open('https://source.unsplash.com/random/300x300/?avatar'), filename: 'john_doe.jpg', content_type: 'image/png')
  new_user = User.new(first_name:, last_name:, email:, password:)
  new_user.save!
end
puts "Finished creating users"
# Creating cars
puts "Creating cars"
car1 = Car.new(
  user_id: User.all.sample.id,
  model: "A3",
  brand: "Audi",
  color: "Black",
  price_per_day: "100",
  address: "Berlin",
  car_type: "Sedan",
  fuel_type: "Diesel",
  transmission: "Automatic",
  drive_type: "Front-wheel",
  year: "2019",
  standard_specs: "Air Conditioning, Power Steering, Power Windows, Power Door Locks, Cruise Control, Tilt Steering Wheel, AM/FM Stereo, CD Player, MP3 Player, Bluetooth, Backup Camera, Alloy Wheels, Keyless Entry, Keyless Start, Heated Seats, Heated Mirrors, Leather Seats, Power Seats, Sunroof/Moonroof, Navigation System, Remote Start, Blind Spot Monitor, Lane Departure Warning, Parking Sensors, Adaptive Cruise Control, Apple CarPlay/Android Auto, Automatic Headlights, Automatic Parking, Heads-Up Display, Heated Steering Wheel, Lane Keeping Assist, Leather Steering Wheel, Memory Seats, Parking Assist, Power Folding Mirrors, Premium Audio, Premium Package, Premium Sound System, Rain Sensing Wipers, Rear Parking Aid, Satellite Radio, Smart Device Integration, Sun/Moonroof, Telematics, Tinted Windows, Tire Pressure Monitoring System, Tow Package, USB Port, Voice Recognition, Wi-Fi Hotspot",
  kilometrage: "10000",
  seats: "5"
)
car1.photos.attach(io: URI.open('https://images.unsplash.com/photo-1540066019607-e5f69323a8dc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXVkaSUyMGE0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'), filename: 'audi-a3.jpg', content_type: 'image/jpg')
car1.save!

car2 = Car.new(
  user_id: User.all.sample.id,
  model: "A4",
  brand: "Audi",
  color: "White",
  price_per_day: "120",
  address: "Berlin",
  car_type: "Sedan",
  fuel_type: "Diesel",
  transmission: "Automatic",
  drive_type: "Front-wheel",
  year: "2019",
  standard_specs: "Air Conditioning, Power Steering, Power Windows, Power Door Locks, Cruise Control, Tilt Steering Wheel, AM/FM Stereo, CD Player, MP3 Player, Bluetooth, Backup Camera, Alloy Wheels, Keyless Entry, Keyless Start, Heated Seats, Heated Mirrors, Leather Seats, Power Seats, Sunroof/Moonroof, Navigation System, Remote Start, Blind Spot Monitor, Lane Departure Warning, Parking Sensors, Adaptive Cruise Control, Apple CarPlay/Android Auto, Automatic Headlights, Automatic Parking, Heads-Up Display, Heated Steering Wheel, Lane Keeping Assist, Leather Steering Wheel, Memory Seats, Parking Assist, Power Folding Mirrors, Premium Audio, Premium Package, Premium Sound System, Rain Sensing Wipers, Rear Parking Aid, Satellite Radio, Smart Device Integration, Sun/Moonroof, Telematics, Tinted Windows, Tire Pressure Monitoring System, Tow Package, USB Port, Voice Recognition, Wi-Fi Hotspot",
  kilometrage: "10000",
  seats: "5"
)

car2.photos.attach(io: URI.open('https://images.unsplash.com/photo-1540066019607-e5f69323a8dc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXVkaSUyMGE0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'), filename: 'audi-a3.jpg', content_type: 'image/jpg')
car2.save!

car3 = Car.new(
  user_id: User.all.sample.id,
  model: "A5",
  brand: "Audi",
  color: "Red",
  price_per_day: "130",
  address: "Berlin",
  car_type: "Sedan",
  fuel_type: "Diesel",
  transmission: "Automatic",
  drive_type: "Front-wheel",
  year: "2019",
  standard_specs: "Air Conditioning, Power Steering, Power Windows, Power Door Locks, Cruise Control, Tilt Steering Wheel, AM/FM Stereo, CD Player, MP3 Player, Bluetooth, Backup Camera, Alloy Wheels, Keyless Entry, Keyless Start, Heated Seats, Heated Mirrors, Leather Seats, Power Seats, Sunroof/Moonroof, Navigation System, Remote Start, Blind Spot Monitor, Lane Departure Warning, Parking Sensors, Adaptive Cruise Control, Apple CarPlay/Android Auto, Automatic Headlights, Automatic Parking, Heads-Up Display, Heated Steering Wheel, Lane Keeping Assist, Leather Steering Wheel, Memory Seats, Parking Assist, Power Folding Mirrors, Premium Audio, Premium Package, Premium Sound System, Rain Sensing Wipers, Rear Parking Aid, Satellite Radio, Smart Device Integration, Sun/Moonroof, Telematics, Tinted Windows, Tire Pressure Monitoring System, Tow Package, USB Port, Voice Recognition, Wi-Fi Hotspot",
  kilometrage: "10000",
  seats: "5"
)
car3.photos.attach(io: URI.open('https://images.unsplash.com/photo-1540066019607-e5f69323a8dc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXVkaSUyMGE0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'), filename: 'audi-a3.jpg', content_type: 'image/jpg')
car3.save!

puts "Finished creating cars"
