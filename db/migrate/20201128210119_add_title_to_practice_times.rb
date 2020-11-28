class AddTitleToPracticeTimes < ActiveRecord::Migration[6.0]
  def change
    add_column :practice_times, :title, :string
  end
end
