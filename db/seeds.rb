# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


breed_names = [
  'German Shepherd',
  'Bulldog',
  'Catahoula',
  'Dalmation',
  'Labrador Retriever',
  'Beagle',
  'Basset Hound',
  'Poodle',
  'Maltese',
  'Mutt',
  'Jack Russell Terrier',
  'Pit Bull',
  'Chihuahua',
  'Golden Retriever',
  'Terrier',
  'Shi-Tzu',
  'Chow',
  'Greyhound',
  'Huskie',
  'Great Dane'
]

breed_names.each do |x|
  Breed.create(name: x)
end

puts "Breeds seeded!"


