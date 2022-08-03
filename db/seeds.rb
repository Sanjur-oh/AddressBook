# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

Person.destroy_all
# Address.destroy_all
# Email.destroy_all
# Telephone.destroy_all

Person.create(first_name: "Michael", last_name: "Franco")

10.times do 
   person = Person.create(
        # salutation
        first_name: Faker::Name.unique.first_name,
        last_name: Faker::Name.unique.last_name
    )
    end



# 5.times do 
#         Address.create(
#             street: Faker::Address.street_name,
#             town: Faker::Address.city,
#             zip: Faker::Address.zip
#             # person_id: rand(1..Person.all.size)
#             # person_id: Faker::Number.between(from: 0, to: 5)
#        )
#     end

# 5.times do 
#         Email.create(
#             email: "#{Faker::Internet.username}@gmail.com",
#             # person_id: rand(1..Person.all.size)
#             # person_id: Faker::Number.between(from: 0, to: 5)

#        )
#     end

#  5.times do 
#         Telephone.create(
#             phone_number: Faker::PhoneNumber.phone_number,
#             # person_id: rand(1..Person.all.size)
#             # person_id: Faker::Number.between(from: 0, to: 5)
#        )
#     end


    # Person.all.each do |person|
    #     rand(1).times do
    #        address = Address.find(Address.pluck(:id).sample)
    #        email = Email.find(Email.pluck(:id).sample)
    #        telephone = Telephone.find(Telephone.pluck(:id).sample)
    #     end
    # end
    
