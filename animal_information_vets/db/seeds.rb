5.times do
  User.create(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8))
end

5.times do 
  Pet.create(name: Faker::Creature::Animal.name, age: Faker::Creature::Dog.age, breed: Faker::Creature::Dog.breed, size: Faker::Creature::Dog.size)
end

5.times do 
  Pet.create(name: Faker::Creature::Animal.name, age: Faker::Creature::Dog.age, breed: Faker::Creature::Dog.breed, size: Faker::Creature::Dog.size)
end

5.times do 
  Pet.create(name: Faker::Creature::Animal.name, age: Faker::Creature::Dog.age, breed: Faker::Creature::Dog.breed, size: Faker::Creature::Dog.size)
end

5.times do 
  Pet.create(name: Faker::Creature::Animal.name, age: Faker::Creature::Dog.age, breed: Faker::Creature::Dog.breed, size: Faker::Creature::Dog.size)
end

5.times do 
  Pet.create(name: Faker::Creature::Animal.name, age: Faker::Creature::Dog.age, breed: Faker::Creature::Dog.breed, size: Faker::Creature::Dog.size)
end
 