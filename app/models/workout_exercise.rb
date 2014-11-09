class WorkoutExercise < ActiveRecord::Base
  belongs_to :workout
  belongs_to :exercise

  validates :exercise, presence: true
  validates :exercise_number,
    presence: true,
    uniqueness: { scope: :workout }
end
