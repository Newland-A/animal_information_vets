class User < ActiveRecord::Base
  # self join associations using foreign key
  has_many :vets, foreign_key: "vet_id", class_name: "Pet"
  # has_many :pets, through: :vets, source: :vets
  has_many :pets, through: :owners, source: :vet
  has_many :owners, foreign_key: "owner_id", class_name: "Pet"
  # has_many :pets, through: :owners, source: :owners
  has_many :pets, through: :vets, source: :owner
  # ActiveRecord methods that require bcrypt to be able to use them.
  #requires bcrypt to be able to use has_secure password
  has_secure_password
 #validations comes from active record 
  validates :username, :email, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true

  # validates_presence_of :password_digest #bcrypt has this built in already

  validates_length_of :password, minimum: 8, if: Proc.new { | user | user.password.present? }
end