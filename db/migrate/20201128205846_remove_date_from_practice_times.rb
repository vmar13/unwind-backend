class RemoveDateFromPracticeTimes < ActiveRecord::Migration[6.0]
  def change
    remove_column :practice_times, :date, :date
  end
end
