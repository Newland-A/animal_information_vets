class User < ActiveRecord::Base
  has_many :vets, foreign_key: "vet_id", class_name: "Vet"
  has_many :owners, foreign_key: "owner_id", class_name: "Owner"
end