puts 'cleaning database...'
Patient.destroy_all

puts 'creating patients...'
5.times do
  Patient.create(name: Faker::Ancient.hero)
end

puts 'finished!'
