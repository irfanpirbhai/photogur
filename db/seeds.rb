# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Picture.create!(
                :title => "Starry Night",
                :artist => "Vincent Van Gogh",
                :url => "http://static.ddmcdn.com/gif/vincent-van-gogh-paintings-from-saint-remy-2.jpg"       
                )


Picture.create!(
                :title => "Piano Guy",
                :artist => "Justin Bua",
                :url => "http://static.ddmcdn.com/gif/vincent-van-gogh-paintings-from-saint-remy-2.jpg"       
                )
