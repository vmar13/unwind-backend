class RemoveFavoritedFromBreathingTechniques < ActiveRecord::Migration[6.0]
  def change
    remove_column :breathing_techniques, :favorited, :boolean
  end
end
