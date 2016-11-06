# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(first_name: "A")
User.create(first_name: "B")
User.create(first_name: "C")

Skill.create(name: "something")
Skill.create(name: "talking")
Skill.create(name: "cooking")
Skill.create(name: "hacking")

Request.create(user_id: 1, skill_id: 1)
Request.create(user_id: 1, skill_id: 2)
Request.create(user_id: 2, skill_id: 1)
Request.create(user_id: 3, skill_id: 3)
Request.create(user_id: 3, skill_id: 2)


Strength.create(user_id: 3, skill_id: 1)
Strength.create(user_id: 2, skill_id: 2)
Strength.create(user_id: 2, skill_id: 3)
Strength.create(user_id: 1, skill_id: 3)


MeetPreference.create(user_id: 1)
MeetPreference.create(user_id: 2)
MeetPreference.create(user_id: 3)

MeetOver.create(meet_preference_id: 1, food: true, drink: true)
MeetOver.create(meet_preference_id: 2, coffee: true, drink: true)
MeetOver.create(meet_preference_id: 3, food: true)

MeetTime.create(meet_preference_id: 1, mon_evening: true, sun_morn: true, wed_afternoon: true )
MeetTime.create(meet_preference_id: 2, mon_evening: true, wed_afternoon: true, thur_morn: true, sun_evening: true, fri_morn: true )
MeetTime.create(meet_preference_id: 3, sun_morn: true, mon_evening: true, mon_morn: true, tue_evening: true )
