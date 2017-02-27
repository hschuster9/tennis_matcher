# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Event.destroy_all
Comment.destroy_all


event1 = Event.create(title: "Looking to work on serve", posted_by: "Mary", location: "Howard University Tennis Courts", level: 2.5, description: "I'm looking for someone around my level to practice my serve.")

event1.comments.create(comment_by: "Pat", content: "Let's play!")
