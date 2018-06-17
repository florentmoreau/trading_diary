# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
   florent = User.create!(email: "f@f", password: "azerty")
   thomas = User.create!(email: "t@t", password: "azerty")

   journal1 = Journal.create!(user: florent, name: 'Day trading', category: 'Forex')
   journal2 = Journal.create!(user: florent, name: 'Swing trading', category: 'Actions')
   journal3 = Journal.create!(user: thomas, name: 'Crypto trading', category: 'Crypto')
