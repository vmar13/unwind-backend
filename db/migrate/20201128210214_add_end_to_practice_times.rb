class AddEndToPracticeTimes < ActiveRecord::Migration[6.0]
  def change
    add_column :practice_times, :end, :string
  end
end
