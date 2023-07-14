# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "==========Create Users================="
user1 = User.create(first_name: 'Trupti', last_name: 'Kadam', email: 'trupti@gmail.com')
user2 = User.create(first_name: 'Paul', last_name: 'Guy', email: "paul@gmail.com")
user3 = User.create(first_name: 'Toby', last_name: 'Stephan', email: "toby@gmail.com")
user4 = User.create(first_name: 'Rob', last_name: 'Kilb', email: "rob@gmail.com")

puts "=========Create Libraries================="
library1 = Library.create(name: 'Library 1')
library2 = Library.create(name: 'Library 2')

puts "==========Create Books================="
book1 = Book.create(name: 'The Whispers', library_id: library1.id, quantity: 10)
book2 = Book.create(name: 'All the Gold Stars', library_id: library1.id, quantity: 10)
book3 = Book.create(name: 'Banyan Moon', library_id: library2.id, quantity: 10)
book4 = Book.create(name: 'The Sunset Crowd', library_id: library2.id, quantity: 10)

puts "==========Create Bookings================="
Booking.create(user: user1, book: book1, checkout_date: '10/7/2023')
Booking.create(user: user3, book: book3, checkout_date: '8/6/2023')
Booking.create(user: user4, book: book3, checkout_date: '3/5/2023')
