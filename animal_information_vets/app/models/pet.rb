class Pet < ActiveRecord::Base
  belongs_to :vet, foreign_key: "vet_id", class_name: "User" 
  belongs_to :owner, foreign_key: "owner_id", class_name: "User"
end