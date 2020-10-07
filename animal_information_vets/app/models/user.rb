class User < ActiveRecord::Base
  has_many :vets
  has_many :owners
end