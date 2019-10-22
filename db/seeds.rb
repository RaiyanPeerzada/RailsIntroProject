# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

University.destroy_all
Student.destroy_all
# University data
uniAPI = 'http://universities.hipolabs.com/search?country=United%20States'
uriUni = URI(uniAPI)
response = Net::HTTP.get(uriUni)
uni_hash = JSON.parse(response)

# Course data
# csv_file = Rails.root + 'db/courses.csv'
# options = { file_encoding: 'iso-8859-1' }
# courses = SmarterCSV.process('db/courses.csv')

# Course.destroy_all

uni_hash.each do |i|
  university = University.create(name: i['name'],
                                 country: i['country'],
                                 webpage: i['web_pages'],
                                 lat: Faker::Address.latitude,
                                 long: Faker::Address.longitude)

  2.times do
    university.students.build(fname: Faker::Name.first_name,
                              lname: Faker::Name.last_name,
                              degree: Faker::Educator.degree).save
  end
end

# courses.each do |_course|
#   student.courses.build(course_number: _course[:course_number],
#                         title: _course[:Title],
#                         description: _course[:Description]).save
# end
