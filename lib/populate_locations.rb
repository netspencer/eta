def create_locations(user, num_points)
  start = 40 - num_points.to_i

  (start..40).reverse_each do |n|
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
    l.user = user
    l.save
  end
end