class CreateBreathingTechniques < ActiveRecord::Migration[6.0]
  def change
    create_table :breathing_techniques do |t|
      t.string :name
      t.string :step_one
      t.string :step_two
      t.string :step_three
      t.string :step_four

      t.timestamps
    end
  end
end
