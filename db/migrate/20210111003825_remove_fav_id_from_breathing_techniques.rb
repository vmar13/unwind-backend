class RemoveFavIdFromBreathingTechniques < ActiveRecord::Migration[6.0]
  def change
    remove_column :breathing_techniques, :fav_id, :integer
  end
end
