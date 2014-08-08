# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

writers = ['Anthony Rigato', "Peter Scholtes", 'James Lowe', 'Mitch Sharrard']
category = ['basketball', 'soccer', 'football', 'baseball', 'other']

10.times do 
	Article.create(writer_id: rand(0..3), title: Faker::Company.catch_phrase, author: writers[rand(0..3)], category: category[rand(0..4)], body: Faker::Lorem.paragraphs(4).join('<br><br>'))
end

writers.each do |writer|
	Writer.create(name: writer, bio: Faker::Lorem.paragraphs(4).join('<br>'), specialty: category[rand(0..4)])
end