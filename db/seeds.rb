# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

writers = ['Anthony Rigato', "Peter Scholtes", 'James Lowe', 'Mitch Sharrard', 'Ian King']
category = ['basketball', 'soccer', 'football', 'baseball', 'stuff']
type = ['sports','stuff']

10.times do 
	Article.create(article_type: type[rand(0..1)], writer_id: rand(1..5), title: Faker::Company.catch_phrase, author: writers[rand(0..3)], category: category[rand(0..4)], body: Faker::Lorem.paragraphs(4).join('<br><br>'))
end

writers.each do |writer|
	Writer.create(name: writer, bio: Faker::Lorem.paragraphs(4).join('<br>'), specialty: category[rand(0..4)])
end

Admin.create(username: 'admin', password: 'daryl', password_confirmation: 'daryl')