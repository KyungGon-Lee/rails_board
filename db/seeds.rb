# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Faker::Config.locale = 'ko'

User.create([
{email: "1234", password: "1234"},
{email: "1", password: "1"},
{email: "234", password: "234"}
])

5.times do
  Post.create(
    title: Faker::Address.state,
    content: Faker::Lorem.words,
    email: Faker::Pokemon.name,
    user_id: rand(1..3)
  )
end

10. times do
  Comment.create(
    content: Faker::Address.state,
    post_id: rand(1..5),
    user_id: rand(1..3)
  )


end
