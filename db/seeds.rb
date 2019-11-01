# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }]
#   Character.create(name: 'Luke', movie: movies.first)

Account.create([
{ username: "john", first_name: "John", last_name: "Doe", email: "johndoe@example.com", password: "password" },
{ username: "Henry", first_name: "Henry", last_name: "Aneke", email: "aneke@example.com", password: "password" },
{ username: "cupid", first_name: "Cathrine", last_name: "Smith", email: "cupid@example.com", password: "password" },
{ username: "Bond007", first_name: "James", last_name: "Bond", email: "bond@example.com", password: "password" },
])
