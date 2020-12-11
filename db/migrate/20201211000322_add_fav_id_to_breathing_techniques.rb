class AddFavIdToBreathingTechniques < ActiveRecord::Migration[6.0]
  def change
    add_column :breathing_techniques, :fav_id, :integer
  end
end
