require 'faker'

genders = ['Female', 'Male', 'Agender', 'Gender fluid', 'Gender Queer', 'Intersex', 'Non Binary', 'N/A']

20.times {User.create!(name: Faker::Name.first_name, age: rand(18..50), gender: genders.sample, summary: Faker::Hipster.sentence)}

user_array = User.all

user_array.each do |user|
	Friendship.create!(user_id: user.id, friend_id: rand(0..user_array.length))
end