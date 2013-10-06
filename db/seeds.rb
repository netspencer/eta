# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Spencer Schoeben", phone_number: "6507967674")

(0..40).reverse_each do |n|
  l = Location.new
  address = address = 2000 - (n * 25)
  address = "#{address.to_s} Massachusetts Alenue, Cambridge, MA"
  geo = Geocoder.search(address)
  next unless geo.first.respond_to? "geometry"
  lat = geo.first.geometry["location"]["lat"]
  lng = geo.first.geometry["location"]["lng"]
  l.latitude = lat
  l.longitude = lng
  l.created_at = n.minutes.ago
  l.user = User.last
  l.save
end