class RemoveTimeFromPracticeTimes < ActiveRecord::Migration[6.0]
  def change
    remove_column :practice_times, :time, :time
  end
end
