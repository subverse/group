# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
for i in 1..3 do
  Subject.create(name: "Subj #{i}")
=end  

Rating.create(name: "Positiv", value: 1)
Rating.create(name: "Neutral", value: 2)
Rating.create(name: "Negativ", value: 3)
