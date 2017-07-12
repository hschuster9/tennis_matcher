# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Event.destroy_all
Comment.destroy_all

event1 = Event.create!(title: "Work on Serve", posted_by: "Jeff", location: "Howard University Tennis Courts", level: 2.5, description: "Looking for someone who also needs to work on their serve.")
event2 = Event.create!(title: "Competitive Match", posted_by: "Anna", location: "Rock Creek Tennis Center", level: 3.5, description: "Looking for someone to play a full match against this weekend.")
event3 = Event.create!(title: "Tournament", posted_by: "Grace", location: "Howard University Tennis Courts", level: 5.0, description: "Trying to get a group of people together to have a tournament.")

event1.comments.create!(comment_by: "Abby", content: "My serve needs some work too. When are you free?")
event2.comments.create!(comment_by: "Zach", content: "Can you play Sunday afternoon?")
event3.comments.create!(comment_by: "Eric", content: "Sign me up!")
