class CreateWorkoutExercises < ActiveRecord::Migration
  def change
    create_table :workout_exercises do |t|
      t.integer :workout_id, null: false
      t.integer :exercise_id, null: false
      t.integer :exercise_number, null: false
      t.integer :duration_in_min
    end

    add_index :workout_exercises, [:workout_id, :exercise_number], unique: true
  end
end
