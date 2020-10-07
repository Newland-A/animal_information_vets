class User < ActiveRecord::Base
  has_many :vets, foreign_key: "vet_id", class_name: "Pet"
  has_many :owners, foreign_key: "owner_id", class_name: "Pet"
end