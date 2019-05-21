# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#Create the users
User.create(
  name: "test",
  email: "test@mail.it",
  password: "abcdef",
  password_confirmation: "abcdef"
)

10.times do |i|
  User.create(
    name: Faker::Name.name,
    email: "user#{i}@mail.it",
    password: "foobar",
    password_confirmation: "foobar"
  )
end

#Create the events
User.first.parties.create(
  name: "Test first party!",
  body: "I'm giving a party... for testing!",
  location: Faker::Address.street_name,
  date: Time.new(2019, 2, 12, 21)
)

User.first.parties.create(
  name: "Second party!",
  body: "I'm giving another party for testing!",
  location: Faker::Address.street_name,
  date: Time.new(2019, 7, 9, 23)
)
