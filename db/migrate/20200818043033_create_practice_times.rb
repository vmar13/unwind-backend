class CreatePracticeTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :practice_times do |t|
      t.date :date
      t.time :time
      t.integer :favorite_id

      t.timestamps
    end
  end
end
