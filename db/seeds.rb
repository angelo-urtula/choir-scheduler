# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ChoirLeader.create(:name => "Agnes Diguzman", :voice => "soprano", :home_locale => "Miami", :district => "South Florida", :email => "agnes123@gmail.com", :phone_number => "3056455555", :password => "123")
ChoirLeader.create(:name => "Lorenz Manilla", :voice => "tenor", :home_locale => "WPB", :district => "South Florida", :email => "lorenz123@gmail.com", :phone_number => "5619545555", :password => "123")
ChoirMember.create(:name => "Angebro Brotoola", :voice => "base", :height => 154, :age => 28, :home_locale => "WPB", :district => "South Florida", :email => "angebro@gmail.com", :phone_number => "5613358110", :password => "123")
ChoirMember.create(:name => "Aby Brotoola", :voice => "alto", :height => 140, :age => 14, :home_locale => "WPB", :district => "South Florida", :email => "abysaur@gmail.com", :phone_number => "5613358120", :password => "123")
ChoirMember.create(:name => "JD Diguzman", :voice => "base", :height => 180, :age => 30, :home_locale => "Miami", :district => "South Florida", :email => "jdhorses@gmail.com", :phone_number => "3053458930", :password => "123")



