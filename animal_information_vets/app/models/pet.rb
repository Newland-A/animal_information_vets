class Pet < ActiveRecord::Base
  belongs_to :vet, class_name: "User" 
  belongs_to :owner, class_name: "User"
  # foreign_key: "vet_id",foreign_key: "owner_id",
end