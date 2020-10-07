class User < ActiveRecord::Base
  has_many :vets, foreign_key: "vet_id", class_name: "Vet"
  has_many :owners, foreign_key: "owner_id", class_name: "Owner"

  has_secure_password

  # validates :username, :email, presence: true
  # validates :email, uniqueness: true
#   PASSWORD_FORMAT = /\A
#   (?=.{8,})          # Must contain 8 or more characters
#   (?=.*\d)           # Must contain a digit
#   (?=.*[a-z])        # Must contain a lower case character
#   (?=.*[A-Z])        # Must contain an upper case character
#   (?=.*[[:^alnum:]]) # Must contain a symbol
# /x

# validates :password, 
#   presence: true, 
#   length: { in: Devise.password_length }, 
#   format: { with: PASSWORD_FORMAT }, 
#   confirmation: true, 
#   on: :create 

# validates :password, 
#   allow_nil: true, 
#   length: { in: Devise.password_length }, 
#   format: { with: PASSWORD_FORMAT }, 
#   confirmation: true, 
#   on: :update

  # validates_presence_of :password_digest

  # validates_length_of :password, minimum: 8, if: Proc.new { |user| user.password.present? }
end