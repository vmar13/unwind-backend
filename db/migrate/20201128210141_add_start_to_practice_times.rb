class AddStartToPracticeTimes < ActiveRecord::Migration[6.0]
  def change
    add_column :practice_times, :start, :string
  end
end
