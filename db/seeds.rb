# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if User.count < 1000
  puts "Creating users..."
  1000.times do
    User.create(
      name: FFaker::Name.name,
      email: FFaker::Internet.email
    )
    print '.'
  end
  puts "1000 Users created!"
end


puts "Creating tasks..."
users = User.all
1000.times do
  name_length = rand(5) + 1
  due_to = rand(1).zero? ? nil : rand(80).days.from_now
  Task.create(
    name: FFaker::Lorem.words(name_length).join(" "),
    description: FFaker::Lorem.sentence,
    due_to: due_to,
    user: users.sample
  )
  print "."
end

puts "1000 tasks created"
