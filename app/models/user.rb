class User < ApplicationRecord
    has_many :favorites
    has_many :breathing_techniques, through: :favorites 
end
