class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :breathing_technique
    has_many :practice_times
end
