# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@user = User.new(email: 'admin@gmail.com', 
             password: '123456789', 
             password_confirmation: '123456789',
             role: 'admin'
             )
@user.build_secret_code(code: 'foobar')
@user.save!