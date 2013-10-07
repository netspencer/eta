# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create(name: "Spencer Schoeben", phone_number: "6507967674")

require "#{Rails.root}/lib/populate_locations.rb"

User.all.each do |user|
  create_locations(user, [10,20,30,40].sample)
end