5.times do
  User.create(username: Faker::Internet.username(specifier: 8), email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8))
end

5.times do
  User.create(username: Faker::Internet.username(specifier: 8), email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8))
end

5.times do
  User.create(username: Faker::Internet.username(specifier: 8), email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8))
end

5.times do 
  Pet.create(name: Faker::Creature::Animal.name, age: Faker::Creature::Dog.age, breed: Faker::Creature::Dog.breed, size: Faker::Creature::Dog.size, vet_id: rand(1..15), owner_id: rand(1..15))
end

5.times do 
  Pet.create(name: Faker::Creature::Animal.name, age: Faker::Creature::Dog.age, breed: Faker::Creature::Dog.breed, size: Faker::Creature::Dog.size, vet_id: rand(1..15), owner_id: rand(1..15))
end

5.times do 
  Pet.create(name: Faker::Creature::Animal.name, age: Faker::Creature::Dog.age, breed: Faker::Creature::Dog.breed, size: Faker::Creature::Dog.size, vet_id: rand(1..15), owner_id: rand(1..15))
end

5.times do 
  Pet.create(name: Faker::Creature::Animal.name, age: Faker::Creature::Dog.age, breed: Faker::Creature::Dog.breed, size: Faker::Creature::Dog.size, vet_id: rand(1..15), owner_id: rand(1..15))
end

5.times do 
  Pet.create(name: Faker::Creature::Animal.name, age: Faker::Creature::Dog.age, breed: Faker::Creature::Dog.breed, size: Faker::Creature::Dog.size, vet_id: rand(1..15), owner_id: rand(1..15))
end
 