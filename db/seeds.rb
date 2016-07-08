# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([{ first_name:'Administrator', last_name:'Man', username:'admin', race:'White', email:'admin@gmail.com', password:'admin123', password_confirmation:'admin123', age:Time.now, role: 0},
					 { first_name:'Instructor', last_name:'Sir', username:'instructor', race:'Asian', email:'instructor@gmail.com', password:'instructor123', password_confirmation:'instructor123', age:Time.now, role: 1},
					 { first_name:'Coach', last_name:'Jane', username:'coach', race:'White', email:'coach@gmail.com', password:'coach123', password_confirmation:'coach123', age:Time.now, role: 2},
					 { first_name:'Student', last_name:'John', username:'trainee', race:'Black', email:'trainee@gmail.com', password:'trainee123', password_confirmation:'trainee123', age:Time.now, role: 3}])