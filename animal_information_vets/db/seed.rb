5.times do
  User.create(username: Faker::Internet.username(specifier: 5..8), email: Faker::Internet.email, )
end

5.times do 
  Pet.create(name: Faker::Creature::Animal.name, age: Faker::Creature::Dog.age, breed: Faker::Creature::Dog.breed)


  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.text     "medical_info"
    t.string   "breed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
    t.integer  "vet_id"
  end
