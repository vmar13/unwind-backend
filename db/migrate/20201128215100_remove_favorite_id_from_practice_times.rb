class RemoveFavoriteIdFromPracticeTimes < ActiveRecord::Migration[6.0]
  def change
    remove_column :practice_times, :favorite_id, :integer
  end
end
