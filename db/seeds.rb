# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

id = 0
200.times do
  User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  zip_code: Faker::Address.zip_code,
  birthdate: Faker::Date.between(120.years.ago, 18.years.ago),
  career_status: rand(1..10)
  )

  id += 1
  MeetPreference.create(user_id: id)

  MeetOver.create(
    meet_preference_id: id,
    food: Faker::Boolean.boolean,
    drink: Faker::Boolean.boolean,
    coffee: Faker::Boolean.boolean
    )
    
  MeetTime.create(
    mon_afternoon: Faker::Boolean.boolean,
    mon_evening: Faker::Boolean.boolean,
    tue_morn: Faker::Boolean.boolean,
    tue_afternoon: Faker::Boolean.boolean,
    tue_evening: Faker::Boolean.boolean,
    wed_morn: Faker::Boolean.boolean,
    wed_afternoon: Faker::Boolean.boolean,
    wed_evening: Faker::Boolean.boolean,
    thur_morn: Faker::Boolean.boolean,
    thur_afternoon: Faker::Boolean.boolean,
    thur_evening: Faker::Boolean.boolean,
    fri_morn: Faker::Boolean.boolean,
    fri_afternoon: Faker::Boolean.boolean,
    fri_evening: Faker::Boolean.boolean,
    sat_morn: Faker::Boolean.boolean,
    sat_afternoon: Faker::Boolean.boolean,
    sat_evening: Faker::Boolean.boolean,
    sun_morn: Faker::Boolean.boolean,
    sun_afternoon: Faker::Boolean.boolean,
    sun_evening: Faker::Boolean.boolean
  )
end

100.times do
  Skill.create(name: Faker::Name.title)

  Skill.create(name: Faker::Company.profession)

  Skill.create(name: Faker::Superhero.power)
end


200.times do
  Request.create(user_id: rand(1..200), skill_id: rand(1..300))
  Strength.create(user_id: rand(1..200), skill_id: rand(1..300))
end
