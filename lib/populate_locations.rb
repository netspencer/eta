(0..40).reverse_each do |n|
  address = 2000 - (n * 25)
  address =  "#{address.to_s} Massachusetts Avenue, Cambridge, MA"
  puts address
end