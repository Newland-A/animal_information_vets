class User < ActiveRecord::Base
  has_many :vets, foreign_key: "vet_id", class_name: "Vet"
  has_many :owners, foreign_key: "owner_id", class_name: "Owner"

  has_secure_password

  validates :username, :email, presence: true
  validates :email, uniqueness: true

  validates_presence_of :password_digest

  validates_length_of :password, minimum: 8, if: Proc.new { |user| user.password.present? }
end