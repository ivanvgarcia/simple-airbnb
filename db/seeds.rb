# == Schema Information
#
# Table name: flats
#
#  id              :integer          not null, primary key
#  name            :string
#  address         :string
#  description     :text
#  price_per_night :integer
#  number_of_guest :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

count = 0
puts 'Destroying all flats...'
Flat.destroy_all

puts 'Creating some flats...'
6.times do
  puts "Creating flat #{count += 1}"
  Flat.create!(
    name: Faker::Games::SuperSmashBros.stage + 'place',
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(1..500),
    number_of_guest: rand(1..5)
  )
end
