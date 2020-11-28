class AddUserIdToPracticeTimes < ActiveRecord::Migration[6.0]
  def change
    add_column :practice_times, :user_id, :integer
  end
end
