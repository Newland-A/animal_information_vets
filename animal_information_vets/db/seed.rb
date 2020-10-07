5.times do
  User.create(username: Faker::Internet.username, )
end

5.times do 
  User.create()