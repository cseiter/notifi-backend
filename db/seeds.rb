# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "beginning seed"

puts "deleting existing table contents"
Device.delete_all
Station.delete_all
Status.delete_all
Owner.delete_all
User.delete_all
Ticket.delete_all
puts "table contents deleted"

puts "populating devices table"
dev1 = Device.create!(device_type: "tablet")
dev2 = Device.create!(device_type: "laptop")
dev3 = Device.create!(device_type: "mobile cart")
puts "device table populated"

puts "populating stations table"
station1 = Station.create!(station_type: "ICQA")
station2 = Station.create!(station_type: "Super Schutes")
station3 = Station.create!(station_type: "Inbound")
puts "station table populated"

puts "populating statuses table"
status1 = Status.create!(status_level: "In Progress")
status2 = Status.create!(status_level: "Completed")
status3 = Status.create!(status_level: "Waiting on response")
puts "statuses table populated"

puts "populating owners table"
owner1 = Owner.create!(owner_name: "Chris")
owner2 = Owner.create!(owner_name: "Holly")
puts "owners table populated"

puts "populating users table"
user1 = User.create!(user_name: "Chris")
user2 = User.create!(user_name: "Aiden")
user3 = User.create!(user_name: "Holly")
user4 = User.create!(user_name: "Amelia")
puts "users table populated"

puts "populating tickets table"
ticket1 = Ticket.create!(ticket_title: "bad tablet", ticket_details: "tablet will not connect to wifi", owners_id: owner1.id, devices_id: dev1.id, stations_id: station2.id, statuses_id: status3.id)
ticket2 = Ticket.create!(ticket_title: "mobile cart missing scanner", ticket_details: "please replace scanner on mobile cart 7", owners_id: owner2.id, devices_id: dev3.id, stations_id: station1.id, statuses_id: status1.id)
puts "tickets table populated"

=begin Station.delete_all


Comment.delete_all

comment1 = Comment.create!(comment: "have you tried turning it off and on again?", tickets_id: ticket1.id, users_id: user1.id)
comment2 = Comment.create!(comment: "order placed, pending approval", tickets_id: ticket2.id, users_id: user1.id)
comment3 = Comment.create!(comment: "purchase approved", tickets_id: ticket2.id, users_id: user3.id)
comment4 = Comment.create!(comment: "do we know how long it will take for the scanner to come in?", tickets_id: ticket2.id, users_id: user2.id)
=end

"seeding complete"