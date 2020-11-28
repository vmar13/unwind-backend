class User < ApplicationRecord
    has_many :favorites
    has_many :breathing_techniques, through: :favorites 
    has_many :practice_times
    has_secure_password
    validates :username, uniqueness: {case_sensitive: true}
end
