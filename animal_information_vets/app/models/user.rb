class User < ActiveRecord::Base
  
  has_many :vets, foreign_key: "vet_id", class_name: "Pet"
  has_many :pets, through: :vets, source: :vet
  has_many :owners, foreign_key: "owner_id", class_name: "Pet"
  has_many :pets, through: :owners, source: :owner
  has_secure_password

  validates :username, :email, presence: true
  validates :username, uniqueness: true

  # validates_presence_of :password_digest #bcrypt has this built in already

  validates_length_of :password, minimum: 8, if: Proc.new { | user | user.password.present? }
end