# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  category = Category.new(title: Faker::Lorem.word)
  10.times do
    category.posts << Post.create(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, email: Faker::Internet.email)
  end
  category.save
end
  
