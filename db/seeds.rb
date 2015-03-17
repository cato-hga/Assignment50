# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Client.delete_all

7.times do |c|
  Client.create(first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name)

end


Address.delete_all

7.times do |b|
  Address.create(street: Faker::Address.street_name,
                 city: Faker::Address.city)

end

Role.delete_all

6.times do |d|
  Role.create(name: Faker::Name.name)

end
Order.delete_all

6.times do |e|
  Order.create(price: Faker::Commerce.price,
               product: Faker::Commerce.price)

end
