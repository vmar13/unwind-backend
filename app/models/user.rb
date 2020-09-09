class User < ApplicationRecord
    has_many :favorites
    has_many :breathing_techniques, through: :favorites 
    has_secure_password
    validates :username, uniqueness: {case_sensitive: true}
end
