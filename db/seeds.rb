Restaurant.destroy_all
puts 'Destroying'
CATEGORIES = %w[chinese italian japanese french belgian].freeze
puts 'Creating...'
5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name ,
    address: Faker::Address.street_address,
    category: CATEGORIES.sample
  )
end
puts 'Created!'
