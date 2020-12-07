class AddFavoritedToBreathingTechniques < ActiveRecord::Migration[6.0]
  def change
    add_column :breathing_techniques, :favorited, :boolean
  end
end
