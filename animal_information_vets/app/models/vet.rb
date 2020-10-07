class Vet < ActiveRecord::Base
  has_many :pets, through: :owners
  has_many :owners, through: :pets

  
end